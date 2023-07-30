// import 'package:bloknot_1/first_page.dart';
import 'package:flutter/material.dart';
import 'package:i_click/first_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Image(image: Image.asset('')),
          SizedBox(
            height: 250,
          ),
          Container(
            height: 462,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              children: [
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
                      hintText: 'Email',
                    ),
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
                        hintText: 'Password',
                        suffixIcon: Icon(Icons.home)),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 40,
                  width: 250,
                  child: Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => First_Page())));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account?',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SIGN IN',
                        style: TextStyle(fontSize: 13, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}