import 'package:flutter/material.dart';
import 'package:i_click/screens/category.dart';
import 'package:i_click/widget/home_widget.dart';
import 'package:i_click/widget/navigationbar.dart';
import 'package:i_click/widget/text_field.dart';

class SecondScreens extends StatelessWidget {
  const SecondScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            //TODO:sxala sti paddingnen ogtagorcely,hetoel 23-rd toxum noric padding kanchely,kam sized box ogtagorceciq,kam hanc yreciq ver mihat padding ini
            padding: EdgeInsets.only(top: 45, left: 20, right: 20),
            child: TextFields(
              icon: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 37,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 243, 245, 247),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CategoryScreen()));
                    },
                    child: const Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 31, 108, 171),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 37,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 243, 245, 247),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Trending',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 37,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 243, 245, 247),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 590,
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 243, 245, 247)),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    //TODO: sa chpiti cerqav ini sarqvac,qani vor hetagayum postery firebasicnq stanalu,u avtomat kerpov piti sarqvin uranq,isk traheti listview buildern ogtagorcum
                    HomePost(),
                    SizedBox(
                      height: 20,
                    ),
                    HomePost(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }
}
