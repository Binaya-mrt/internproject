import 'package:flutter/material.dart';

/// This method returns SizedBox.
/// this is used in user's profile  and have featrure to update status.

const Text verticalDivider = Text("|");

SizedBox statusHeader(context) {
  return SizedBox(
    height: 130,
    child: Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ownProfile');
                },
                child: const CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/pp.jpg"),
                ),
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
