// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mindfullday_v1/cadastro.dart';
import 'package:mindfullday_v1/homev2.dart';
import 'package:mindfullday_v1/util/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final nomeController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(134, 150, 254, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page-1/images/bg-login.png'),
                opacity: 0.4,
                fit: BoxFit.fill,

              ),
            ),

            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.lock,
                      size: 100,
                    ),
                    Text(
                      'Bem vindo!!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Campotexto(
                  controller: nomeController,
                  hintText: 'Nome',
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Campotexto(
                    controller: senhaController,
                    hintText: 'Senha',
                    obscureText: true),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Text('Entrar'),
                  
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Não é cadastrado?',
                        style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255))),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Cadastro()),
                        );
                      },
                      child: Text(
                        'Cadastre-se agora!',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 72, 33, 243),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
