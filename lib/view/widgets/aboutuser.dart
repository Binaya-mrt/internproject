import 'package:flutter/material.dart';

/// This method returns listtile.
/// this is used in user's profile to show his info in [about] section.
/// Leading takes relatable icons and title takes user information.

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
