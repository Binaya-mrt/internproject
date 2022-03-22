import 'package:flutter/material.dart';

/// This widget is used to display post of a user.
/// Mainly this is used in newsfeed
/// This can also be used whil visiting user's profile.
/// This widget contains image container, comment field and like count and button.

class NewsFeed extends StatelessWidget {
  const NewsFeed({
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/othersProfile');
                  },
                  child: CircleAvatar(
                    backgroundImage: AssetImage(profileimagePath),
                    radius: 25,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    // "Prakash Sapkota",
                    username,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    // "Teacher / 4h ago",
                    job + "/ " + time + " ago",

                    style: const TextStyle(
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
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    // text: ,
                    text: caption,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    // text: "#Dance",
                    text: "#" + tag,
                    style: const TextStyle(
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
                      icon: const Icon(Icons.thumb_up),
                    ),
                    Text(likeCount),
                  ],
                ),
                Row(
                  children: [
                    Text(commentCount),
                    TextButton(
                      onPressed: () {},
                      child: const Text("Comments"),
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
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/pp.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(196, 216, 216, 207),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: TextFormField(
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: "Write a public Comment.."),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt_outlined),
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
