import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final List search = [
      'assetc/images/13.png',
      'assetc/images/14.png',
      'assetc/images/15.png',
      'assetc/images/16.png',
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromRGBO(243, 245, 247, 1)),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    prefixIcon: const Icon(Icons.search),
                    labelText: 'Search',
                    hintText: 'Type something',
                  ),
                ),
              ),
            ),
            Container(
              height: 900,
              width: double.infinity,
              child: GridView.builder(
                itemCount: search.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 2 / 2,
                    mainAxisExtent: 160),
                itemBuilder: (context, index) => Image.asset(
                  search[index],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
