import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class WallPost extends StatefulWidget {
  final String message;
  final String user;
  final String postId;
  final List<String> likes;

  const WallPost({super.key, required this.message, required this.user,required this.postId, required this.likes});

  @override
  State<WallPost> createState() => _WallPostState();
}

class _WallPostState extends State<WallPost> {
  final currentUser = FirebaseAuth.instance.currentUser!;
bool isLiked = false;
final _commentTextController = TextEditingController();
void initState (){
  super.initState();
  isLiked = widget.likes.contains(currentUser.email);
}

void addComent(String commentText){
  FirebaseFirestore.instance.collection("User Post").
  doc(widget.postId).
  collection("Coments").
  add({
  "CommentText" :commentText,
  "CometndBy": currentUser.email,
  "ComentTime": Timestamp.now()});
}

void sowComentDialog(){
  showDialog(context: context, builder: (context)=>AlertDialog(
title: Text("Add Coments"),
content:  TextField(
  controller: _commentTextController,
  decoration: InputDecoration(hintText: "Wite a comment.."),
),
actions: [
  TextButton(onPressed: () => addComent(_commentTextController.text)
  , child: Text("Post")),
   TextButton(onPressed: () => Navigator.pop(context,)
  , child: Text("Cancel")),
],

  ),);
}

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [ 
        Column(
          children: [
            
          ],
        )
      ],
    );
  }
}