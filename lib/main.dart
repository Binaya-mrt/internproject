import 'package:brosoft/view/community.dart';
import 'package:brosoft/view/pages/dance.dart';
import 'package:brosoft/view/pages/exam.dart';
import 'package:brosoft/view/pages/song.dart';
import 'package:brosoft/view/profile/othersprofile.dart';
import 'package:brosoft/view/profile/ownerprofile.dart';
import 'package:brosoft/view/tags.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const Community(),
        '/tags': (context) => const Tags(),
        '/dance': (context) => const Dance(),
        '/song': (context) => const Song(),
        '/exam': (context) => const Exam(),
        '/ownProfile': (context) => UsersProfile(),
        '/othersProfile': (context) => OtherUsersProfile()
      },
    );
  }
}
