import 'package:brosoft/model/tagmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Tags"),
        ),
        body: SafeArea(
          child: GridView.builder(
            itemCount: tags.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 4 / 2,
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tags[index].title,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            tags[index].postCount + " posts today",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
