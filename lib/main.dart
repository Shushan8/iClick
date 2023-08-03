import 'package:flutter/material.dart';

import 'package:i_click/screens/home.dart';

import 'package:i_click/acitivity.dart';
import 'package:i_click/home.dart';
import 'package:i_click/messeges.dart';
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
// <<<<<<< hasmik_branch
//     return const MaterialApp(
//       home: Home(),
// =======
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ((context) => ColorGradient()),),
        ChangeNotifierProvider(create: ((context) => UserProvider()),),
        
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
    
        home:Message (),
    
      ),
// >>>>>>> master
    );
  }
}
