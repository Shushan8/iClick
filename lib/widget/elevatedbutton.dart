import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class ElevatedButtons extends StatelessWidget {
  const ElevatedButtons(
      {super.key,
      required this.whdth,
      required this.height,
      required this.textbutton,
      required this.fanction,
      required this.fontSizes,
      required this.borederRadi});
  final double whdth;
  final double height;
  final String textbutton;
  final Function fanction;
  final double fontSizes ;
  final double borederRadi ;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return InkWell(
      onTap: (){
        fanction();
      },
      child: Container(
        width: whdth,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            colorProvider.colorGradient1,
            colorProvider.colorGradient2
          ]),
          borderRadius: BorderRadius.circular(borederRadi),
        ),
        child: Center(
            child: Text(
          textbutton,
          style:  TextStyle(color: Colors.white, fontSize:fontSizes ),
        )),
      ),
    );
  }
}
