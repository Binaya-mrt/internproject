import 'package:brosoft/model/tagmodel.dart';
import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  const Tags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              return GestureDetector(
                onTap: () {
                  print(tags[index].navigationRoute);
                  if (tags[index].navigationRoute != null) {
                    Navigator.pushNamed(context, tags[index].navigationRoute!);
                  } else {
                    final snackBar = SnackBar(
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        content: const Text('Oops! Page not implemented !!'));

                    Scaffold.of(context).showSnackBar(snackBar);
                  }
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tags[index].title,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              tags[index].postCount + " posts today",
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Image(
                        image: AssetImage(tags[index].iconPath),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
