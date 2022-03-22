import 'package:flutter/material.dart';

ListTile userDetails(IconData icon, String title) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.black,
    ),
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}
