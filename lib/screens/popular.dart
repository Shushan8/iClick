import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:i_click/model/post.dart';
import 'package:i_click/screens/post.dart';
import 'package:i_click/widget/home_widget.dart';

class Popular extends StatefulWidget {
  
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return 
     StreamBuilder(
        stream: FirebaseFirestore.instance.collection('post').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              children: snapshot.data!.docs.map(
                (document) {
                  return HomePost(
                    post: Post.fromJson(
                      document.data(),
                    ),
                  );
                },
              ).toList(),
            );
          }
        },
      
    );    //    Column(
    //     children: [
    //       const HomePost(),
    //       HomePost(),
    //     ],
      
    // );
  }
}