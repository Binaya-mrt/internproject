import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  static Text verticalDivider = const Text("|");
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
            Container(
              height: 130,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage("images/pp.jpg"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Create your post",
                                hintStyle: TextStyle(
                                  fontSize: 20,
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    height: 2,
                    thickness: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        statusBarIcons("Status", Icons.note_alt_outlined),
                        verticalDivider,
                        statusBarIcons(
                          "Photo",
                          Icons.image_outlined,
                        ),
                        verticalDivider,
                        statusBarIcons("Audio", Icons.mic_none_outlined),
                      ],
                    ),
                  )
                ],
              ),
            ),
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

  /// This method is used to display different uploading method.
  Row statusBarIcons(String title, IconData icon) {
    return Row(
      children: [
        Icon(icon),
        const VerticalDivider(
          thickness: 2,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

/// This widget is used to display post of a user.
/// Mainly this is used in newsfeed
/// This can also be used whil visiting user's profile.
/// This widget contains image container, comment field and like count and button.
class NewsFeed extends StatelessWidget {
  NewsFeed({
    required this.username,
    required this.caption,
    required this.commentCount,
    required this.profileimagePath,
    required this.job,
    required this.likeCount,
    required this.tag,
    required this.time,
    required this.imagePath,
  });
  final String profileimagePath;
  final String username;
  final String job;
  final String time;
  final String caption;
  final String tag;
  final String imagePath;
  final String likeCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          /// THis row shows the [UserName],[Profile Picture],and Other details of other user while displaying their post
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(profileimagePath),
                  radius: 25,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // "Prakash Sapkota",
                    username,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    // "Teacher / 4h ago",
                    job + "/ " + time + " ago",

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),

          /// This is a caption region.
          /// Other user posting a image and the caption is displayed by the help of this widget.
          Padding(
            padding: const EdgeInsets.fromLTRB(3, 8, 3, 8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    // text: ,
                    text: caption,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    // text: "#Dance",
                    text: "#" + tag,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          /// This container will display the image uploaded by other user.
          /// This image is used in newsfeed.
          Container(
            height: 280,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.thumb_up),
                    ),
                    Text(likeCount),
                  ],
                ),
                Row(
                  children: [
                    Text(commentCount),
                    TextButton(
                      onPressed: () {},
                      child: Text("Comments"),
                      style: TextButton.styleFrom(primary: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Comment section starts from here.
          /// Here is a row which contains the image of user who is logged in.
          /// And a container containing a TextFormField and Icon Button
          /// [TextFormField] is used to write comment.
          /// [Icon button] will be assigned a function to upload a image comment
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/pp.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(196, 216, 216, 207),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write a public Comment.."),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera_alt_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
