import 'package:flutter/material.dart';

class TextFiledRegister extends StatelessWidget {
  const TextFiledRegister(
      {super.key,
      required this.filedHintText,
      required this.filedWidth,
      required this.filedIcon,
      required this.filedIcons,
      required this.controller});
  //TODO: Yes uxxaki xndrum uxxagrutyany u anunnerin ushadrutyun darcreciq,es parametrery kpoxiq
  final controller;
  final String filedHintText;
  final double filedWidth;
  final IconData filedIcon;
  final bool filedIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      width: filedWidth,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: filedHintText,
          suffixIcon: filedIcons ? Icon(filedIcon) : SizedBox(),
          filled: true,
          fillColor: const Color.fromARGB(255, 246, 247, 249),
          disabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 246, 247, 249)),
            borderRadius: BorderRadius.circular(50.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 246, 247, 249)),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}
