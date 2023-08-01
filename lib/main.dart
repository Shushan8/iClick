import 'package:flutter/material.dart';


import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/screens/category.dart';
import 'package:i_click/screens/challenge1.dart';
import 'package:i_click/screens/editprofile.dart';
import 'package:i_click/screens/messagescreen.dart';
import 'package:i_click/screens/profile.dart';
import 'package:i_click/screens/search_screen.dart';
import 'package:i_click/screens/second_screens.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => ColorGradient()),),
        ChangeNotifierProvider(create: ((context) => UserProvider()),),
         ChangeNotifierProvider(create: ((context) => SearchProvider()),),
        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
    
        home:EditProfile (),
    
      ),
    );
  }
}
