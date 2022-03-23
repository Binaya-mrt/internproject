import 'package:flutter/material.dart';

import '../widgets/captionheader.dart';
import '../widgets/newsfeedCard.dart';

/// THis is a exam tag page.
/// All the post related to exam appears here.
/// A user also can post from here.

class Exam extends StatelessWidget {
  const Exam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("#Exam"),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            }),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
                child: Text(
              '100+ post',
              style: TextStyle(fontSize: 15),
            )),
          )
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
                      caption: "Most important Question",
                      commentCount: "240",
                      likeCount: "15K",
                      job: "Student",
                      tag: "Exam",
                      time: "${index + 5}h",
                      username: "Bablu Pandit",
                      imagePath: "images/brosoft1.jpg",
                      profileimagePath: "images/doctor.jpeg");
                }),
          ],
        ),
      )),
    );
  }
}
