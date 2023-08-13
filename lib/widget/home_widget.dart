import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_click/widget/imga_name.dart';

class HomePost extends StatelessWidget {
  const HomePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
          Image.asset('assetc/images/images1.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assetc/icons/plus.svg',
                  width: 20,
                  height: 20,
                ),
                SizedBox(
                  width: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('20'),
                          SvgPicture.asset(
                            'assetc/icons/Chat.svg',
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('125'),
                          SvgPicture.asset(
                            'assetc/icons/heart.svg',
                            width: 20,
                            height: 20,
                          ),
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
