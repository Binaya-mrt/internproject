import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile(
      {required this.job, required this.name, required this.imagePath});
  final String name;
  final String job;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.blue),
      child: Stack(
        children: [
          Positioned(
            top: 45,
            right: 0,
            left: 30,
            child: Container(
              color: Colors.white,
              // width: MediaQuery.of(context).size.width / 2,
              height: 60,
              child: Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      job,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 63,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
