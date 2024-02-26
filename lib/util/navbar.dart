// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple[900],
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Nome do Usuario'), 
            accountEmail: Text('Email do Usuario'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(),
            ),
            ),
          ],
        ),
    );
  }
}