import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:i_click/screens/add_post.dart';
import 'package:i_click/screens/adddd.dart';
import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/screens/popular.dart';
import 'package:i_click/widget/home_widget.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final items = [
      Icon(Icons.home_outlined),
      Icon(Icons.category_outlined),
      InkWell(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AddProductScreen()));
          },
          child: Icon(Icons.add)),
      Icon(Icons.notifications_none_outlined),
      Icon(Icons.account_circle_outlined),
    ];
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
