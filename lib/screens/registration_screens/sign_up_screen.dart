// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:i_click/model/user1.dart';
import 'package:i_click/screens/registration_screens/verificationscreen.dart';
// import 'package:i_click/screens/registration_screens/welcome_screen.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../provider/sign_in_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final email1Controller = TextEditingController();
    final password1Controller = TextEditingController();
    final password2Controller = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    final authService = FirebaseAuth.instance;
    final signInProvider = Provider.of<SignInProvider>(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
            height: 400,
            width: double.infinity,
            child: Image.asset(
              'assetc/images/welcome.png',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 330),
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const TextFiledRegister(
                controller: '',
                filedWidth: 350,
                filedHintText: 'Email',
                filedIcon: Icons.abc,
                filedIcons: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFiledRegister(
                controller: '',
                filedWidth: 350,
                filedHintText: 'Password',
                filedIcon: Icons.abc,
                filedIcons: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFiledRegister(
                controller: '',
                filedWidth: 350,
                filedHintText: 'Password',
                filedIcon: Icons.dangerous,
                filedIcons: true,
              ),
              const SizedBox(
                height: 35,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButtons(
                  whdth: 310,
                  height: 50,
                  textbutton: 'SIGN IN',
                  fanction: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const VerificationScreen()));
                  },
                  fontSizes: 16,
                  borederRadi: 30),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => const SignUpScreen()),
                    ),
                  );
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have account?',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GradientText(
                        'SING UP',
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        colors: const [
                          Color.fromARGB(255, 81, 81, 198),
                          Color.fromARGB(255, 136, 139, 244)
                          // =======
                          //       body: SingleChildScrollView(
                          //         child: StreamBuilder(
                          //           stream: authService.authStateChanges(),
                          //           builder: (context, snapshot) => Stack(children: <Widget>[
                          //             Container(
                          //               height: 400,
                          //               width: double.infinity,
                          //               child: Image.asset(
                          //                 'assetc/images/welcome.png',
                          //                 fit: BoxFit.cover,
                          //               ),
                          //             ),
                          //             Padding(
                          //               padding: const EdgeInsets.only(top: 330),
                          //               child: Container(
                          //                 width: double.infinity,
                          //                 decoration: const BoxDecoration(
                          //                     color: Colors.white,
                          //                     borderRadius: BorderRadius.only(
                          //                         topLeft: Radius.circular(20),
                          //                         topRight: Radius.circular(20))),
                          //                 child: Column(children: [
                          //                   const SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   TextFiledRegister(
                          //                     controller: email1Controller,
                          //                     filedWidth: 350,
                          //                     filedHintText: 'Email',
                          //                     filedIcon: Icons.abc,
                          //                     filedIcons: false,
                          //                   ),
                          //                   const SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   TextFiledRegister(
                          //                     controller: password1Controller,
                          //                     filedWidth: 350,
                          //                     filedHintText: 'Password',
                          //                     filedIcon: Icons.abc,
                          //                     filedIcons: false,
                          //                   ),
                          //                   const SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   TextFiledRegister(
                          //                     controller: password2Controller,
                          //                     filedWidth: 350,
                          //                     filedHintText: 'Repeat password',
                          //                     filedIcon: Icons.dangerous,
                          //                     filedIcons: true,
                          //                   ),
                          //                   const SizedBox(
                          //                     height: 35,
                          //                   ),
                          //                   const SizedBox(
                          //                     height: 20,
                          //                   ),
                          //                   ElevatedButtons(
                          //                       whdth: 310,
                          //                       height: 50,
                          //                       textbutton: 'SIGN IN',
                          //                       fanction: () async {
                          //                         final AppUser user1 = AppUser(
                          //                           email: email1Controller.text,
                          //                         );
                          //                         final userCredential =
                          //                             await authService.createUserWithEmailAndPassword(
                          //                                 email: email1Controller.text.trim(),
                          //                                 password: password1Controller.text.trim());
                          //                         FirebaseFirestore.instance
                          //                             .collection('user')
                          //                             .doc(userCredential.user!.uid)
                          //                             .set(user1.toJson());
                          //                         Navigator.push(
                          //                             context,
                          //                             MaterialPageRoute(
                          //                               builder: (context) => WelcomeScreen(),
                          //                             ));

                          //                         // signInProvider.login(email1Controller.text.trim(),
                          //                         //     password1Controller.text.trim());
                          //                       },
                          //                       fontSizes: 16,
                          //                       borederRadi: 30),
                          //                   const SizedBox(
                          //                     height: 25,
                          //                   ),
                          //                   InkWell(
                          //                     onTap: () {
                          //                       Navigator.of(context).pop();
                          //                     },
                          //                     child: Row(
                          //                       mainAxisAlignment: MainAxisAlignment.center,
                          //                       crossAxisAlignment: CrossAxisAlignment.center,
                          //                       children: [
                          //                         const Text(
                          //                           'Don\'t have account?',
                          //                           style: TextStyle(fontSize: 15, color: Colors.grey),
                          //                         ),
                          //                         const SizedBox(
                          //                           width: 5,
                          //                         ),
                          //                         GradientText(
                          //                           'SING UP',
                          //                           style: const TextStyle(
                          //                             fontSize: 15,
                          //                           ),
                          //                           colors: const [
                          //                             Color.fromARGB(255, 81, 81, 198),
                          //                             Color.fromARGB(255, 136, 139, 244)
                          //                           ],
                          //                         ),
                          // >>>>>>> master
                        ],
                      ),
                    ]),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
