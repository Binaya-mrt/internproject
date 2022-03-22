import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tag {
  Tag({
    required this.title,
    required this.postCount,
    this.icon,
  });
  final String title;
  final String postCount;
  IconData? icon;
}

List<Tag> tags = [
  Tag(
    icon: FontAwesomeIcons.downLeftAndUpRightToCenter,
    postCount: "120k",
    title: "Dance",
  ),
  Tag(postCount: "23K", title: "Speech"),
  Tag(postCount: "69K", title: "Song"),
  Tag(postCount: "67K", title: "Drama"),
  Tag(postCount: "89K", title: "Game"),
  Tag(postCount: "18K", title: "Enovation"),
  Tag(postCount: "13K", title: "Travel"),
  Tag(postCount: "90k", title: "Exam"),
  Tag(postCount: "556K", title: "Q & N"),
  Tag(postCount: "03K", title: "Study"),
  Tag(postCount: "40K", title: "Food"),
  Tag(postCount: "23K", title: "Customs"),
  Tag(postCount: "98K", title: "Festivals"),
  Tag(postCount: "56K", title: "Travels"),
  Tag(postCount: "34K", title: "Q & N"),
  Tag(postCount: "139K", title: "Study"),
  Tag(postCount: "210K", title: "Food"),
  Tag(postCount: "250K", title: "Customs"),
];
