import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:i_click/screens/add_post.dart';
import 'package:i_click/screens/adddd.dart';
import 'package:i_click/screens/home.dart';
// <<<<<<< HEAD
// import 'package:i_click/screens/cteat_colections.dart';
// import 'package:i_click/screens/email.dart';
// import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/screens/post.dart';

// import 'package:i_click/screens/registration_screens/welcome_screen.dart';

import 'package:i_click/provider/provider.dart';
import 'package:i_click/provider/userprovider.dart';
// <<<<<<< movsisyan2_branch_
import 'package:i_click/screens/account.dart';
import 'package:i_click/screens/home.dart';
// =======
// import 'package:i_click/widget/coments.dart';

// =======
// import 'package:i_click/provider/sign_in_provider.dart';
// import 'package:i_click/provider/provider.dart';
// import 'package:i_click/provider/userprovider.dart';
// import 'package:i_click/screens/post.dart';
// import 'package:i_click/screens/registration_screens/welcome_screen.dart';
// >>>>>>> 02105098d9b16a366b83de9e83d962cb30dc8401
// >>>>>>> master
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
// <<<<<<< movsisyan2_branch_
//         home: Account(),
// =======
        home: Home(),
// >>>>>>> master
      ),
    );
  }
}
