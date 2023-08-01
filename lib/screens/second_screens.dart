import 'package:flutter/material.dart';
import 'package:i_click/widget/home_widget.dart';
import 'package:i_click/widget/navigationbar.dart';
import 'package:i_click/widget/text_field.dart';

class SecondScreens extends StatelessWidget {
  const SecondScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final searcController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, left: 20, right: 20)
            ,
            child: TextFields(
              icon:true ,
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
                      borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 243, 245, 247),
                    ),
                    
                    child: TextButton(
                      
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
                  ),
                  Container(
                    height: 37,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 243, 245, 247),
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
                      borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 243, 245, 247),
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
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 245, 247)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
