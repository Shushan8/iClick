import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_click/screens/discoverscreen.dart';
import 'package:i_click/widget/home_widget.dart';
import 'package:i_click/widget/navigationbar.dart';
import 'package:i_click/widget/text_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> items = [
    'Popular',
    'Trending',
    'Folowing',
  ];
  List post = [
    HomePost(),
    Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.amber),
    ),
    Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.black),
    ),
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 110,
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
                  height: 48,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 243, 245, 247),
                  ),
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 130,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? const Color.fromRGBO(241, 241, 254, 1)
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(10)
                                  : BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.bold,
                                    color: current == index
                                        ? const Color.fromRGBO(136, 139, 244, 1)
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [post[current]],
            ),
          ),
        ],
      ),
    );
//       bottomNavigationBar: const NavigationBarScreen(),
//     );
  }
}
//   }
// }
