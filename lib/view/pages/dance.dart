import 'package:flutter/material.dart';

import '../widgets/captionheader.dart';
import '../widgets/newsfeedCard.dart';

/// THis is a dance tag page.
/// All the post related to dance appears here.
/// A user also can post from here.

class Dance extends StatelessWidget {
  const Dance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("#Dance"),
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
              '3k+ post',
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
