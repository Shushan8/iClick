import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/sign_up_screen.dart';
import 'package:i_click/screens/registration_screens/verificationscreen.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    // final authService = FirebaseAuth.instance;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                'assetc/images/welcome.png',
                fit: BoxFit.cover,
              )),
          //TODO:Sti anum chn,iharke gorca anum,bayc esac ver kujir device-i yira run yreci applicationy xarnveluva,cevapoxeli entakaya tvyal widgeti karucvacqy,u nman ayl widgetnenel,voronq backgroundum nkar onin
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
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
                    filedIcon: Icons.dangerous,
                    filedIcons: true,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => const VerificationScreen())));
                    },
                    child: GradientText(
                      'F O R G O T   P A S S W O R D',
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                      colors: const [
                        Color.fromARGB(255, 81, 81, 198),
                        Color.fromARGB(255, 136, 139, 244)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButtons(
                      whdth: 310,
                      height: 50,
                      textbutton: 'LOG IN',
                      fanction: () {},
                      fontSizes: 16,
                      borederRadi: 30),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    'OR LOG IN BY',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => SignUpScreen())));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have account?',
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                          },
                          child: GradientText(
                            'SING UP',
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                            colors: const [
                              Color.fromARGB(255, 81, 81, 198),
                              Color.fromARGB(255, 136, 139, 244)
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
