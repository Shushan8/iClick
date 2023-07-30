import 'package:flutter/material.dart';
import 'package:i_click/cteat_colections.dart';
import 'package:i_click/provider/provider.dart';
import 'package:i_click/widget/your_collection.dart';
import 'package:provider/provider.dart';

class AddToColections extends StatefulWidget {
  const AddToColections({super.key});

  @override
  State<AddToColections> createState() => _AddToColectionsState();
}

class _AddToColectionsState extends State<AddToColections> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(clipBehavior: Clip.none, children: <Widget>[
            Positioned(
              right: 10,
              left: 10,
              top: -10,
              child: Container(
                height: 510,
                width: 400,
                decoration:const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color:  Color.fromARGB(255, 189, 189, 189)),
              ),
            ),
            Container(
              decoration:const BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20), right: Radius.circular(20)),
                  color: Colors.white),
              width: double.infinity,
              height: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      const  Text(
                          'Save to collection',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const CreatNewColections()));
                          },
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                colorProvider.colorGradient1,
                                colorProvider.colorGradient2,
                              ]),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:const Center(
                                child: Text(
                              'New Collection',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      'Your Collections',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      height: 370,
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 4 / 4,
                                  mainAxisSpacing: 25,
                                  // crossAxisSpacing: 25,
                                  mainAxisExtent: 160),
                          itemBuilder: (context, index) =>const YourCollection()),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                top: -20.0,
                right: 180,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color:const Color.fromARGB(172, 194, 192, 192)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child:const Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ))
          ])
        ],
      ),
    );
  }
}
