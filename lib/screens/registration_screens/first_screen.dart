import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/sign_up.dart';
import 'package:i_click/screens/registration_screens/verification.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _First_PageState();
}

class _First_PageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // final authService = FirebaseAuth.instance;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      //TODO: Animast Column,jnjel
      body: Column(
        children: [
          Stack(
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
                        Width: 350,
                        Text: 'Email',
                        filedIcon: Icons.abc,
                        Icons: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextFiledRegister(
                        Width: 350,
                        Text: 'Password',
                        filedIcon: Icons.dangerous,
                        Icons: true,
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const Verification())));
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
                      buttonwidth: 310,
                          buttonheight: 50,
                          buttontext: 'LOG IN',
                          fanction: () {},
                          buttonTextFontSize: 16,
                          buttonborederRadius: 30),
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
                              builder: ((context) => SignUp())));
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
                                    builder: (context) => const SignUp()));
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
        ],
      ),
    );
  }
}
