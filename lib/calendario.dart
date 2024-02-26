// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mindfullday_v1/homev2.dart';
import 'package:mindfullday_v1/util/navbar.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  const Calendario({super.key});

  @override
  State<Calendario> createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              icon: Icon(Icons.home)
            ), 
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              icon: Icon(Icons.add_circle_outline_rounded)
            ), 
            label: 'Adicionar Tarefa'
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Calendario()),
                );
              },
              icon: Icon(Icons.calendar_month_outlined)
            ), 
            label: 'Calendario'
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.now(), 
              lastDay: DateTime.now()
            ),
          )
        ],
      ),
    );
  }
}