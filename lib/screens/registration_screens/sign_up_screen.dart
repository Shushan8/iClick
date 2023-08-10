import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/verificationscreen.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
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
                filedWidth: 350,
                filedHintText: 'Email',
                filedIcon: Icons.abc,
                filedIcons: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFiledRegister(
                filedWidth: 350,
                filedHintText: 'Password',
                filedIcon: Icons.abc,
                filedIcons: false,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextFiledRegister(
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
                      ],
                    ),
                  ],
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
