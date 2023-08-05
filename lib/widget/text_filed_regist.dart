import 'package:flutter/material.dart';

class TextFiledRegister extends StatelessWidget {
  const TextFiledRegister({
    super.key,
    required this.Text,
    required this.Width,
    required this.filedIcon,
    required this.Icons,
  });

  final String Text;
  final double Width;
  final IconData filedIcon;
  final bool Icons;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      width: Width,
      child: TextField(
        decoration: InputDecoration(
          hintText: Text,
          suffixIcon: Icons ? Icon(filedIcon) : SizedBox(),
          filled: true,
          fillColor: Color.fromARGB(255, 246, 247, 249),
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
