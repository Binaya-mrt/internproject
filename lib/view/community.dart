import 'package:brosoft/view/widgets/newsfeedCard.dart';
import 'package:flutter/material.dart';

import 'widgets/captionheader.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/tags");
              },
              child: const Text(
                "Tags",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            statusHeader(context),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NewsFeed(
                      caption: "See my Dance Coreographer by my self ",
                      commentCount: "240",
                      likeCount: "15K",
                      job: "Teacher",
                      tag: "dance",
                      time: "${index + 5}h",
                      username: "Prakash Sapkota",
                      imagePath: "images/brosoft1.jpg",
                      profileimagePath: "images/doctor.jpeg");
                }),
          ],
        ),
      )),
    );
  }
}
