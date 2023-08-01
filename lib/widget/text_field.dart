import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key, required this.icon});
  final bool icon ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 300,
          height: 40,
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search),
              hintText: 'Search',
              filled: true,
              fillColor: Color.fromARGB(255, 243, 245, 247),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 243, 245, 247)),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 243, 245, 247)),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
       icon?  Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 243, 245, 247)),
            child: Icon(Icons.send)): Container()
      ],
    );
  }
}
