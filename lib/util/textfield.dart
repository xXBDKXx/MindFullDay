// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables
 
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 
class Campotexto extends StatelessWidget {
 
  final controller;
  final String hintText;
  final bool obscureText;
 
  const Campotexto({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });
 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(30)
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,


        ),
      ),
    );
  }
}