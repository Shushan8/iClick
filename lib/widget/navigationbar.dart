import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  final items = const [
    Icon(Icons.home_outlined),
    Icon(Icons.category_outlined),
    Icon(Icons.add),
    Icon(Icons.notifications_none_outlined),
    Icon(Icons.account_circle_outlined),
  ];
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: items,
      index: index,
      onTap: (selectedIndex) {
        setState(() {
          index = selectedIndex;
        });
      },
      height: 75,
      backgroundColor: Color.fromARGB(255, 136, 140, 244),
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
