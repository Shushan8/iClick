import 'package:flutter/material.dart';
import 'package:i_click/activity_feed.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';

class CreatNewColections extends StatelessWidget {
  const CreatNewColections({super.key});

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
                    color: Colors.grey),
              ),
            ),
            Container(
                decoration:const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color: Colors.white),
                width: double.infinity,
                height: 500,
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 40),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Type name",
                                filled: true,
                                fillColor: Color.fromARGB(255, 246, 247, 249),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                      color:
                                          Color.fromARGB(255, 246, 247, 249)),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                      color:
                                          Color.fromARGB(255, 246, 247, 249)),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>const ActivityFeed()));
                            },
                            child: Container(
                              width: 360,
                              height: 60,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  colorProvider.colorGradient1,
                                  colorProvider.colorGradient2
                                ]),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child:const Center(
                                  child: Text(
                                'CREATE COLLECTION',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              )),
                            ),
                          ),
                        ],
                      )),
                ])),
            Positioned(
                top: -20.0,
                right: 180,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromARGB(172, 194, 192, 192)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: const Icon(
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
