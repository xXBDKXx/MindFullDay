// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mindfullday_v1/login_page.dart';
import 'package:mindfullday_v1/util/textfield.dart';


class Cadastro extends StatelessWidget {
  Cadastro({super.key});

  final nomeController = TextEditingController();
  final senhaController = TextEditingController();
  final teleController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      resizeToAvoidBottomInset: false,
=======
>>>>>>> f1ad3b72841c148bd1d1c762d77c9c216fc6a211
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
<<<<<<< HEAD
            child: Expanded(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.question_mark,
                        size: 100,
                      ),
                      Text(
                        'Cadastre-se!!',
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
                      obscureText: true
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Campotexto(
                      controller: teleController,
                      hintText: 'Telefone',
                      obscureText: false
                    ),
                  SizedBox(
                    height: 10
                  ),
                  Campotexto(
                      controller: emailController,
                      hintText: 'Email',
                      obscureText: false
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Cadastrar'),
                      ),
                      SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: Text('Voltar'),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
=======
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.question_mark,
                      size: 100,
                    ),
                    Text(
                      'Cadastre-se!!',
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
                    obscureText: true
                ),
                SizedBox(
                  height: 10,
                ),
                Campotexto(
                    controller: teleController,
                    hintText: 'Telefone',
                    obscureText: false
                  ),
                SizedBox(
                  height: 10
                ),
                Campotexto(
                    controller: emailController,
                    hintText: 'Email',
                    obscureText: false
                  ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Cadastrar'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Voltar'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
              ],
>>>>>>> f1ad3b72841c148bd1d1c762d77c9c216fc6a211
            ),
          ),
        ),
      ),
    );
  }
}