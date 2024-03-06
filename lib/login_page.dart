// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
 
import 'package:flutter/material.dart';
import 'package:mindfullday_v1/paginas/cadastro.dart';
import 'package:mindfullday_v1/home.dart';
import 'package:mindfullday_v1/util/textfield.dart';
 
 
class LoginPage extends StatelessWidget {
  LoginPage({super.key});
 
  final nomeController = TextEditingController();
  final senhaController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    const logo = "assets/imagens/logo.png";
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(134, 150, 254, 1),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/page-1/images/bg-login.png'),
                opacity: 0.5,
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
                    const Image(
                      image: AssetImage(logo),
                      width: 266,
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
                  SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
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
                      style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))
                    ),
                    const SizedBox(width: 4,),
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