import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String ImagePath;
  final Function()? onTap;
  const SquareTile({super.key, required this.ImagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color.fromRGBO(227, 228, 252, 1),
      ),
      child: Image.asset(
        ImagePath,
        height: 40,
      ),
    );
  }
}
