// import 'package:bloknot_1/send_verification.dart';
import 'package:flutter/material.dart';
import 'package:i_click/send_verification.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // Image(image: Image.asset('')),
      const SizedBox(
        height: 250,
      ),
      Container(
        height: 462,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          // borderRadius:
          //     BorderRadius.circular(15)
        ),
        child: Column(
          children: [
            const Text(
              'VERIFICATION',
              style: TextStyle(fontSize: 15, color: Colors.blue),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 450,
              child: Text(
                'A message with verification code was sent to your mobile phone.',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 40,
              width: 350,
              child: Center(
                child: Text(
                  'Type verification code',
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 131, 130, 130)),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'DON\'T RECEIVE THE CODE ',
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: ((context) => SendVerification())));
              },
              child: Container(
                height: 40,
                width: 250,
                child: Center(
                  child: Text(
                    'VERIFY',
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
      )
    ]));
  }
}
