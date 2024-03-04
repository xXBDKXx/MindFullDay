// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mindfullday_v1/calendario.dart';
import 'package:mindfullday_v1/util/tarefas.dart';
import 'package:mindfullday_v1/util/emoticon.dart';
import 'package:mindfullday_v1/util/navbar.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(134, 150, 254, 1),
      drawer: NavBar(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 134, 150, 254),
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
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page-1/images/bg-home.png'),
                opacity: 0.5,
                fit: BoxFit.fill,
              ),
            ),
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    //Olá usuario e notificações
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Olá, (Usuario)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '21 Jan 2024',
                              style: TextStyle(color: Colors.deepPurple[100]),
                            )
                          ],
                        ),
                        //Notificação
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(0, 82, 45, 168),
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    //Barra de Busca
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(120, 255, 255, 255),
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Procurar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
          
                    //Como você está se sentindo hoje
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Como você está se sentindo hoje?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
          
                    //Emoções
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Triste
                        Column(
                          children: [
                            Emoticons(
                              emoticons: '😥',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Triste',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //Feliz
                        Column(
                          children: [
                            Emoticons(
                              emoticons: '😁',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Feliz',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //Pensativo(a)
                        Column(
                          children: [
                            Emoticons(
                              emoticons: '🤔',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Pensativo(a)',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        //Furioso(a)
                        Column(
                          children: [
                            Emoticons(
                              emoticons: '😡',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Furioso(a)',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[800], borderRadius: BorderRadius.only(
                      topRight:  Radius.circular(30), 
                      topLeft: Radius.circular(30)
                    ),
                    boxShadow: 
                    [
                      BoxShadow(
                        color: Color.fromARGB(43, 51, 51, 51),
                        blurRadius: 4,
                        offset: Offset(0, -8),
                        spreadRadius: -4,
                      ),
                    ],
                  ), 
                padding: EdgeInsets.all(25),
                child: Center(
                  child: Column(
                    children: [
                      // Heading Tarefas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tarefas',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      //Lista de Tarefas
                      Expanded(
                        child: ListView(
                          children: [
                            Tarefas(
                              icon: Icons.favorite,
                              nomeTarefa: 'Tarefa 1',
                              descricaoTarefa: 'Descrição da Tarefa',
                              color: Colors.lightBlue,
                            ),
                            //ola Garden
                            Tarefas(
                              icon: Icons.earbuds,
                              nomeTarefa: 'Tarefa 2',
                              descricaoTarefa: 'Descrição da Tarefa',
                              color: Colors.orange,
                            ),
                            Tarefas(
                              icon: Icons.person,
                              nomeTarefa: 'Tarefa 3',
                              descricaoTarefa: 'Descrição da Tarefa',
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
