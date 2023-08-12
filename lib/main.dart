import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:i_click/screens/cteat_colections.dart';
import 'package:i_click/screens/email.dart';
import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/screens/post.dart';

import 'package:i_click/screens/registration_screens/welcome_screen.dart';

import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/widget/coments.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => ColorGradient()),
        ),
        ChangeNotifierProvider(
          create: ((context) => UserProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => SearchProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => Collect()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostScreen(),
      ),
    );
  }
}
