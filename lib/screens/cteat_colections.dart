import 'package:flutter/material.dart';
import 'package:i_click/screens/activity_feed.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';

class CreatNewColections extends StatelessWidget {
  const CreatNewColections({super.key});

  @override
  Widget build(BuildContext context) {
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
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(20), right: Radius.circular(20)),
                    color: Colors.grey),
              ),
            ),
            Container(
                decoration: const BoxDecoration(
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
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: TextFiledRegister(
                                filedHintText: 'Type name',
                                filedWidth: 360,
                                filedIcon: Icons.abc,
                                filedIcons: false),
                          ),
                          ElevatedButtons(
                              whdth: 360,
                              height: 60,
                              textbutton: 'CREATE COLLECTIONs',
                              fontSizes: 20,
                              borederRadi: 50,
                              fanction: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const ActivityFeed()));
                              })
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
                          width: 1, color:const Color.fromARGB(172, 194, 192, 192)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ActivityFeed()));
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ),
                ))
          ])
        ],
      ),
    );
  }
}
