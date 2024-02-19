// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mindfullday_v1/homev2.dart';
import 'package:mindfullday_v1/util/textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final nomeController = TextEditingController();
  final senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page-1/images/bg-login.png'),
                fit: BoxFit.cover,
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
                        style: TextStyle(color: Colors.grey[500]),
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
                      style: TextStyle(color: Colors.grey[500])
                    ),
                    const SizedBox(width: 4,),
                    Text(
                      'Cadastre-se agora!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
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
