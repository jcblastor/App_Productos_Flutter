import 'package:flutter/material.dart';

class NoticationsService {
  static GlobalKey<ScaffoldMessengerState> messengerKey = GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String message) {
    final snackBar = SnackBar(
      backgroundColor: Colors.red,
      content: Text(message, style: const TextStyle(color: Colors.white)),
    );

    messengerKey.currentState!.showSnackBar(snackBar);
  }
}
