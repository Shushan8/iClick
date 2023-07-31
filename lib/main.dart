import 'package:flutter/material.dart';
import 'package:i_click/account.dart';


import 'package:i_click/home.dart';

import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
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
        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
    
        home:Account (),
    
      ),
    );
  }
}
