// import 'package:bloknot_1/send_verification.dart';
import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/send_verificationscreen.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
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
                  'VERIFICATION',
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
                  height: 86,
                  width: 330,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 241, 241, 254)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'A message with verification code was sent to your mobile phone.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          height: 1.5,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFiledRegister(
                    filedHintText: 'Type verification code',
                    filedWidth: 310,
                    filedIcon: Icons.abc,
                    filedIcons: false),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'D O N \' T  R E C E I V E  T H E  C O D E ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButtons(
                    whdth: 310,
                    height: 50,
                    textbutton: 'VERIFY',
                    fanction: () {
                      
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>const SendVerificationScreen()));
                    
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
