import 'package:flutter/material.dart';
import 'package:i_click/screens/select_category.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class VerificationPasswordScreen extends StatefulWidget {
  
  const VerificationPasswordScreen({super.key});

  @override
  State<VerificationPasswordScreen> createState() =>
      _VerificationPasswordScreenState();
}

class _VerificationPasswordScreenState
    extends State<VerificationPasswordScreen> {
  @override
  Widget build(BuildContext context) {
// <<<<<<< HEAD
    final unicId = DateTime.now().microsecondsSinceEpoch;
// =======
    final passwordController = TextEditingController();
    final password1Controller = TextEditingController();

// >>>>>>> 02105098d9b16a366b83de9e83d962cb30dc8401
    return Scaffold(
        body: Column(children: [
      Stack(children: <Widget>[
        Container(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'assetc/images/Group8012.png',
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.only(top: 230),
          child: Container(
            height: 590,
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
                GradientText(
                  'SET NEW PASSWORD',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w700),
                  colors: const [
                    Color.fromARGB(255, 81, 81, 198),
                    Color.fromARGB(255, 136, 139, 244)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 241, 241, 254)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Type your new password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                            height: 1.5,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFiledRegister(
                    controller: passwordController,
                    filedHintText: 'Password',
                    filedWidth: 310,
                    filedIcon: Icons.slideshow_rounded,
                    filedIcons: true),
                const SizedBox(
                  height: 20,
                ),
                TextFiledRegister(
                    controller: password1Controller,
                    filedHintText: 'Confirm Password',
                    filedWidth: 310,
                    filedIcon: Icons.slideshow_rounded,
                    filedIcons: true),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButtons(
                    whdth: 310,
                    height: 50,
                    textbutton: 'SEND',
                    fanction: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SelectCategory()));
                    },
                    fontSizes: 16,
                    borederRadi: 30),
                const SizedBox(
                  height: 60,
                ),
                Image.asset('assetc/images/Group7030.png')
              ],
            ),
          ),
        )
      ])
    ]));
  }
}
