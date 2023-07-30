import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String text;

  const ContainerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 160),
        child: Container(
          height: 50,
          width: 250,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Color.fromRGBO(255, 255, 255, 0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 205, vertical: 165),
        child: Icon(
          Icons.chevron_right,
          size: 40,
          color: Colors.white,
        ),
      )
    ]);
  }
}
