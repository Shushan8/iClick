import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons(
      {super.key,
      required this.buttonwidth,
      required this.buttonheight,
      required this.buttontext,
      required this.fanction,
      required this.buttonTextFontSize,
      required this.buttonborederRadius});
  final double buttonwidth;
  final double buttonheight;
  final String buttontext;
  final Function fanction;
  final double buttonTextFontSize;
  final double buttonborederRadius;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return InkWell(
      onTap: () {
        fanction;
      },
      child: Container(
        width: buttonwidth,
        height: buttonheight,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            colorProvider.colorGradient1,
            colorProvider.colorGradient2
          ]),
          borderRadius: BorderRadius.circular(buttonborederRadius),
        ),
        child: Center(
            child: Text(
          buttontext,
          style: TextStyle(color: Colors.white, fontSize: buttonTextFontSize),
        )),
      ),
    );
  }
}
