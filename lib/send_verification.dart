// import 'package:bloknot_1/send_password.dart';
import 'package:flutter/material.dart';
import 'package:i_click/send_password.dart';

class SendVerification extends StatefulWidget {
  const SendVerification({super.key});

  @override
  State<SendVerification> createState() => _SendVerificationState();
}

class _SendVerificationState extends State<SendVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(children: <Widget>[
        Container(
            height: 250,
            width: double.infinity,
            child: Image.asset(
              'assetc/images/welcome.png',
              fit: BoxFit.cover,
            )),
        Padding(
            padding: const EdgeInsets.only(top: 230),
            child: Container(
              height: 486,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  const Text(
                    'TYPE YOUR EMAIL',
                    style: TextStyle(fontSize: 17, color: Colors.blue),
                  ),
                  Container(
                    height: 60,
                    width: 450,
                    child: Text(
                      'We will send you instruction on how to reset your password',
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.blue,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => VerificationPassword())));
                    },
                    child: Container(
                      height: 40,
                      width: 250,
                      child: Center(
                        child: Text(
                          'SEND',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ],
              ),
            ))
      ])
    ]));
  }
}
