import 'package:brosoft/view/community.dart';
import 'package:brosoft/view/tags.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      },
    );
  }
}
