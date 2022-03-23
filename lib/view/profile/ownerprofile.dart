import 'package:brosoft/view/widgets/captionheader.dart';
import 'package:flutter/material.dart';

import '../widgets/aboutuser.dart';
import '../widgets/newsfeedCard.dart';
import '../widgets/userProfiecard.dart';

/// This is a page that a user sees when he opens his own profile.
/// He can post from here also like from community or tags section.
/// If he navigates back he will be redirected towards previous page.
///
class UsersProfile extends StatelessWidget {
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
              imagePath: "images/pp.jpg",
              job: "Student",
              name: "Rockey Poudel",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Posts",
                style: TextStyle(fontSize: 20),
              ),
            ),
            statusHeader(context),
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
            userDetails(Icons.school_rounded, "Class 5(A)"),
            userDetails(Icons.person, "Male"),
            userDetails(Icons.cake_rounded, "9th May"),
            userDetails(Icons.email_rounded, "Ronak@gmail.com"),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return NewsFeed(
                      caption: "See my Dance Coreographer by my self ",
                      commentCount: "240",
                      likeCount: "15K",
                      job: "Student",
                      tag: index / 2 == 0 ? "dance" : "Song",
                      time: "${index + 5}h",
                      username: "Rockey Paudel",
                      imagePath: "images/brosoft1.jpg",
                      profileimagePath: "images/pp.jpg");
                }),
          ],
        ),
      )),
    );
  }
}
