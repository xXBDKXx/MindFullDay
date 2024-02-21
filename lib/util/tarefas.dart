// ignore: duplicate_ignore
// ignore: file_names



// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Tarefas extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon; 
  final String nomeTarefa;
  final String descricaoTarefa;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  

  const Tarefas({
    Key? key,
    required this.icon,
    required this.nomeTarefa,
    required this.descricaoTarefa,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, 
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(16),
                color: color,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              //Titulo
              Text(
                nomeTarefa,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 4,),
              //Subtitulo
              Text(
                descricaoTarefa,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 14),
              ),],
            ),],
          ),
        const Icon(Icons.more_horiz)
      ],),
        ),
    );
  }
}