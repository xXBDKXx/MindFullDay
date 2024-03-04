// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoticons extends StatelessWidget {
  final String emoticons;

  const Emoticons({
    required this.emoticons,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(color: Colors.deepPurple[700], borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emoticons,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}