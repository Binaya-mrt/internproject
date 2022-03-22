import 'package:flutter/material.dart';

import '../widgets/aboutuser.dart';
import '../widgets/newsfeedCard.dart';
import '../widgets/userProfiecard.dart';

class OtherUsersProfile extends StatelessWidget {
  // OtherUsersProfile(
  //     {required this.name, required this.job, required this.imagePath});
  // final String name;
  // final String job;
  // final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const UserProfile(
              name: 'Prakash Sapkota',
              job: "Teacher",
              imagePath: 'images/doctor.jpeg',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            userDetails(
                Icons.school_rounded, "Shree Laxmi mavi Secondary school"),
            userDetails(Icons.location_on, "Bharatpur 11, Chitwan"),
            userDetails(Icons.person, "Male"),
            userDetails(Icons.cake_rounded, "9th May"),
            userDetails(Icons.email_rounded, "prakashdhakal@gmail.com"),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NewsFeed(
                      caption: "Few Important Questions",
                      commentCount: "240",
                      likeCount: "15K",
                      job: "Student",
                      tag: index / 2 == 0 ? "exam" : "Q & A",
                      time: "${index + 5}h",
                      username: "Prakash Dhakal",
                      imagePath: "images/brosoft1.jpg",
                      profileimagePath: "images/doctor.jpeg");
                }),
          ],
        ),
      )),
    );
  }
}
