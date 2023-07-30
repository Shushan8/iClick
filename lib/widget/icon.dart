import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class IconsOnly extends StatelessWidget {
  const IconsOnly({super.key});

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
      child: const Icon(
        Icons.favorite_border,
        color: Colors.white,
      ),
    );
  }
}
