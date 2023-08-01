import 'package:flutter/material.dart';

class VerificationPassword extends StatefulWidget {
  const VerificationPassword({super.key});

  @override
  State<VerificationPassword> createState() => _VerificationPasswordState();
}

class _VerificationPasswordState extends State<VerificationPassword> {
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
                    'SET NEW PASSWORD',
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 450,
                    child: Text(
                      'Type your new password',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 50,
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
                          suffixIcon: Icon(Icons.home)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
                          hintText: 'Confirm Password',
                          suffixIcon: Icon(Icons.home)),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: ((context) => SendVerification())));
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
