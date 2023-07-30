import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 28,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120),
                      child: Text(
                        'Bruno',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(246, 247, 249, 1),
                ),
                child: const Text(
                  'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      'assetc/images/17.png',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 150,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(246, 247, 249, 1),
                  ),
                  child: const Text(
                    'Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assetc/images/17.png'),
                  ),
                  Image.asset('assetc/images/19.png')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 120,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(246, 247, 249, 1),
                      ),
                      child: const Text(
                        'That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assetc/images/18.png'),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(136, 139, 244, 1),
                      ),
                    ),
                  ),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromRGBO(136, 139, 244, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 13, vertical: 20),
                    child: Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(136, 139, 244, 1),
                      ),
                    ),
                  ),
                  Image.asset('assetc/images/17.png'),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Bruno is typing',
                      style: TextStyle(
                        color: Color.fromRGBO(136, 139, 244, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 200,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Type something',
                      prefixIcon: Icon(Icons.image_outlined)),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
