// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_typing_uninitialized_variables

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
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                locale: 'pt-BR', 
                headerStyle: 
                  HeaderStyle(formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) =>isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
                
              ),
            )
          ],
        ),
      ),
    );
  }
}