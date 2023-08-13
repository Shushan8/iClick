import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// <<<<<<< movsisyan2_branch_
import 'package:flutter_svg/flutter_svg.dart';
// =======
import 'package:i_click/screens/add_post.dart';
import 'package:i_click/screens/adddd.dart';
import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/screens/popular.dart';
import 'package:i_click/widget/home_widget.dart';
// >>>>>>> master

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarScreen> {
// <<<<<<< movsisyan2_branch_
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
// =======
  int index = 1;
// >>>>>>> master
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
