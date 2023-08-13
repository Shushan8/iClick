import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  final items = [
    SvgPicture.asset(
      'assetc/icons/Home.svg',
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      'assetc/icons/Category copy.svg',
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      'assetc/icons/navigation.svg',
      width: 30,
      height: 30,
    ),
    SvgPicture.asset(
      'assetc/icons/Notification copy.svg',
      width: 24,
      height: 24,
    ),
    SvgPicture.asset(
      'assetc/icons/Profile.svg',
      width: 24,
      height: 24,
    ),
  ];
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      key: _bottomNavigationKey,
      items: items,
      onTap: (index) {
        setState(() {
          _page = index;
        });
      },
      height: 75,
      backgroundColor: Color.fromARGB(255, 136, 140, 244),
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
