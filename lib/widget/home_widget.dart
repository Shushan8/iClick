import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_click/model/post.dart';
import 'package:i_click/widget/icons.dart';
import 'package:i_click/widget/imga_name.dart';

class HomePost extends StatefulWidget {
    final Post post;
  const HomePost({super.key, required this.post});

  @override
  State<HomePost> createState() => _HomePostState();
}

class _HomePostState extends State<HomePost> {
  @override
  Widget build(BuildContext context) {
    
    final postCollection = FirebaseFirestore.instance.collection('post');
    return Container(
      
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const ImageName(),
                Row(
                  children: [
                    // DateTime.utc(widget.post.postTime),
                    // Text(
                    //   widget.post.postTime,
                    //   style: TextStyle(color: Colors.grey, fontSize: 17),
                    // ),
                    const Text(
                      ' hour ago',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                  ],
                )
              ],
            ),
          ),
          Image.network(
                         widget.post.postImageUrl,
                         height: 250,
                         width: 350,
                         fit: BoxFit.cover,
                         ),
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
                          // SvgPicture.asset(
                          //   iconChat,
                          //   height: 200,
                          //   width: 200,
                          // )
                          //                        IconButton(icon: SvgPicture.asset(

                          // ),onPressed: () {},)
                          // Icon(
                          //   Icons.chat_outlined,
                          //   color: Colors.blueAccent,
                          // ),
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
