import 'package:flutter/material.dart';
import 'package:i_click/widget/collection.dart';
import 'package:i_click/widget/navigationbar.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List topic = [
    'assetc/images/5.png',
    'assetc/images/6.png',
    'assetc/images/5.png',
  ];

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
                        borderRadius: BorderRadius.circular(10),
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
            Container(
              height: 110,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: topic.length,
                itemBuilder: (context, index) => Container(
                  child: Image.asset(
                    topic[index],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            const CollectionScrren(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            const CollectionScrren()
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }
}
