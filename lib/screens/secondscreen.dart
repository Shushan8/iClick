import 'package:flutter/material.dart';
import 'package:i_click/widget/navigationbar.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  child: Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'Search'),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(Icons.send),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 31, 108, 171),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Trending',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Following',
                    style: TextStyle(fontSize: 18, color: Colors.black54),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
              child: Row(
                children: [
                  Image.asset('assetc/images/111.png'),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      'Thanh Pham',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      '1 hour ago',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assetc/images/222.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('20'),
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('125'),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
              child: Row(
                children: [
                  Image.asset('assetc/images/3.png'),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: Text(
                      'Bruno   ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text(
                      '             1 hour ago',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Image.asset('assetc/images/4.png'),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.blueAccent,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('20'),
                      Icon(
                        Icons.chat_outlined,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text('125'),
                    Icon(
                      Icons.favorite_border,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }

  // Widget getSelctedWidget({required int index}) {
  //   Widget widget;
  //   switch (index) {
  //     case 0:
  //       widget = const SecondScreen();
  //       break;
  //     case 1:
  //       widget = CategoryScreen();
  //       break;
  //     case 2:
  //       widget = NotificationScreen();
  //       break;

  //     default:
  //       widget = Profile();
  //       break;
  //   }
  //   return widget;
  // }
}
