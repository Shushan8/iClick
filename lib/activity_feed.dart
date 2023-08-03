
import 'package:flutter/material.dart';
import 'package:i_click/acitivity.dart';
import 'package:i_click/provider/provider.dart';
import 'package:i_click/widget/swich.dart';
import 'package:provider/provider.dart';



class ActivityFeed extends StatefulWidget {
  const ActivityFeed({super.key});

  @override
  State<ActivityFeed> createState() => _ActivityFeedState();
}

class _ActivityFeedState extends State<ActivityFeed> {
  
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               const   Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: 20, vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Activity Feed',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: SizedBox(
                      height: 370,
                      child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          gridDelegate:
                            const   SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  childAspectRatio: 3 / 3,
                                  mainAxisSpacing: 10,
                                  // crossAxisSpacing: 25,
                                  mainAxisExtent: 70),
                          itemBuilder: (context, index) => Padding(
                                padding:const
                                     EdgeInsets.symmetric(horizontal: 30),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color:const Color.fromARGB(255, 246, 247, 249),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(colorProvider.text[index], style:const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                          
                                          StyledSwitch(onToggled: (bool isToggled) {  },),
                                        
                                        ]),
                                  ),
                                ),
                              )),
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
                          width: 1, color: const Color.fromARGB(172, 194, 192, 192)),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: InkWell(
                    onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder:(context) => const Activity()));
                    },
                    child:const Icon(
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
