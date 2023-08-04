import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/first_screen.dart';
import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
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
