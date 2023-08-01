import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class Iconka extends StatelessWidget {
 const  Iconka({super.key, required this.ikonka});
 final  IconData ikonka;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);

    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            colorProvider.colorGradient1,
            colorProvider.colorGradient2,
          ],
        ).createShader(bounds);
      },
      child:  Icon(
        ikonka,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
