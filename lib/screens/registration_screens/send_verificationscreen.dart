import 'package:flutter/material.dart';
import 'package:i_click/screens/registration_screens/send_passwordscreen.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SendVerificationScreen extends StatefulWidget {
  const SendVerificationScreen({super.key});

  @override
  State<SendVerificationScreen> createState() => _SendVerificationScreenState();
}

class _SendVerificationScreenState extends State<SendVerificationScreen> {
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
                SizedBox(
                  height: 20,
                ),
                GradientText(
                  'TYPE YOUR EMAIL',
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
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'We will send you instruction on how to reset your password',
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
                const TextFiledRegister(
                    filedHintText: 'Emali',
                    filedWidth: 310,
                    filedIcon: Icons.abc,
                    filedIcons: false),
                const SizedBox(
                  height: 75,
                ),
                ElevatedButtons(
                    whdth: 310,
                    height: 50,
                    textbutton: 'SEND',
                    fanction: () {
                       Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>const VerificationPasswordScreen()));
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
