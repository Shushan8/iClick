import 'package:flutter/material.dart';
import 'package:i_click/screens/search_screen.dart';
import 'package:i_click/widget/discover.dart';
import 'package:i_click/widget/navigationbar.dart';
import 'package:i_click/widget/text_field.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List topic = [
    'assetc/images/mj2NwYH3wBA.png',
    'assetc/images/mj2NwYH3wBA1.png',
    'assetc/images/mj2NwYH3wBA1.png',
  ];
  final List controllerimage = [
    'assetc/images/controllerimagess.png',
    'assetc/images/controllerimagess.png',
    'assetc/images/controllerimagess.png',
  ];
  final List controllertext = [
    'PORTRAI PHOTOGRAPHY',
    'MUSIC VIDEO',
    'MUSIC VIDEO',
  ];

  final List topicText = [
    'PHOTOGRAPY',
    'UI DISIGN',
    'UI DISIGN',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 20),
              child: TextFields(
                icon: true,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Topic',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 108, 124, 202),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 121,
                width: 380,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 165,
                    ),
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SearchScreen()));
                          },
                          child: Discover(
                            sizedheights: 0,
                            positionHeights: 90,
                            topicText2: '',
                            widths: 200,
                            heights: 95,
                            imagesurl: topic[index],
                            topicText: topicText[index],
                          ),
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Collection',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 108, 124, 202),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 180,
                width: 390,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 170,
                    ),
                    itemBuilder: (context, index) => Discover(
                          sizedheights: 25,
                          positionHeights: 150,
                          topicText2: '70 photos',
                          widths: 400,
                          heights: 150,
                          imagesurl: controllerimage[index],
                          topicText: controllertext[index],
                        )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Collection',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'View more',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 108, 124, 202),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 180,
                width: 390,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 170,
                    ),
                    itemBuilder: (context, index) => Discover(
                          sizedheights: 25,
                          positionHeights: 150,
                          topicText2: '70 photos',
                          widths: 400,
                          heights: 150,
                          imagesurl: controllerimage[index],
                          topicText: controllertext[index],
                        )),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }
}
