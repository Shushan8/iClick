import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key, required this.imagesurl, required this.topicText,required this.topicText2, required this.widths, required this.heights, required this.positionHeights, required this.sizedheights});
  final String imagesurl;
  final String topicText;
  final String topicText2;
  final double widths;
  final double heights;
 final double positionHeights;
 final double sizedheights;

  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: <Widget>[
                Container(
                  width: widths,
                  height: heights,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      imagesurl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                 Positioned(child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(79, 93, 90, 82),
                  ),
                  height: positionHeights,
                  
                  ))
         ,
                Positioned(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: sizedheights,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:35),
                      child: Center(
                          child: Text(
                       topicText,
                        textAlign: TextAlign.center,
                        style:const TextStyle(
                          color: Colors.white,
                           fontSize: 14,
                           fontWeight: FontWeight.w700),
                      )),
                    ),
                  ],
                )),
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(topicText2, style: TextStyle(fontSize: 14, color: Colors.grey),),
                )
            ],
            
          )
            ),
    );;
  }
}