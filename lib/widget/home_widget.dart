import 'package:flutter/material.dart';
import 'package:i_click/widget/imga_name.dart';

class HomePost extends StatelessWidget {
  const HomePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageName(),
                Text(
                  '1 hour ago',
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                )
              ],
            ),
          ),
          Image.asset('assetc/images/222.png'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.blueAccent,
                ),
                SizedBox(
                  width: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('20'),
                          Icon(
                            Icons.chat_outlined,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('125'),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.blueAccent,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
