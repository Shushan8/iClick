import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final controller;
  final hintext;

  const TextInput({super.key, required this.controller, this.hintext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(243, 245, 247, 1),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintext,
          ),
        ),
      ),
    );
  }
}
