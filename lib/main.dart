import 'package:flutter/material.dart';
import 'package:i_click/account.dart';

import 'package:i_click/screens/registration_screens/first_screen.dart';


import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/screens/registration_screens/send_password.dart';
import 'package:i_click/screens/registration_screens/send_verification.dart';
import 'package:i_click/screens/registration_screens/sign_up.dart';
import 'package:i_click/screens/registration_screens/verification.dart';
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
    
        home: First_Page (),
    
      ),
    );
  }
}
