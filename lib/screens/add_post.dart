import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:i_click/model/post.dart';
import 'package:i_click/screens/select_category.dart';
import 'package:i_click/widget/container.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:image_picker/image_picker.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  
  @override
  Widget build(BuildContext context) {
    final postIdRandom = Random();
    final postTitleController = TextEditingController();
    final postDiscriptionController = TextEditingController();
    final postController = FirebaseFirestore.instance.collection('post');
    File? image;

    Future pickImage() async {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(
        () {
          //  this.image = imageTemporary;
        },
      );
      // return imageTemporary;
    }

    final controller = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFiledRegister(
              controller: postTitleController,
              filedHintText: 'Title',
              filedWidth: 310,
              filedIcon: Icons.abc,
              filedIcons: false),
          const SizedBox(
            height: 75,
          ),
          TextFiledRegister(
              controller: postDiscriptionController,
              filedHintText: 'Discription',
              filedWidth: 310,
              filedIcon: Icons.abc,
              filedIcons: false),
          const SizedBox(
            height: 75,
          ),
          TextFiledRegister(
              controller: controller,
              filedHintText: 'Image piker',
              filedWidth: 310,
              filedIcon: Icons.abc,
              filedIcons: false),
          const SizedBox(
            height: 75,
          ),
          ElevatedButtons(
              whdth: 310,
              height: 50,
              textbutton: 'Add Post',
              fanction: 
              () async {
                if (image == null) {
                  return;
                } else {
                  String uniqueName =
                      DateTime.now().microsecondsSinceEpoch.toString();                       

                  Reference storageReference = FirebaseStorage.instance.ref();
                  Reference bucketRef = storageReference.child('images');
                  Reference imageRef = bucketRef.child(uniqueName);

                  final snapshot =
                      await imageRef.putFile(image!).whenComplete(() => null);
                  final imageUrl = await snapshot.ref.getDownloadURL();
                    Post newPost = Post(
                      postid: postIdRandom.nextInt(1000).toString(),
                     
                     postTitle: postTitleController.text, 
                     postImageUrl: imageUrl, 
                     postDeccription: postDiscriptionController.text, 
                     postTime: DateTime(10), 
                      );
                  // Product newProduct = Product(
                  //     id: random.nextInt(1000),
                  //     image: imageUrl,
                  //     title: _titleController.text,
                  //     price: int.parse(_priceController.text),
                  //     description: _descriptionController.text);

                  // postController
                  //     .doc(newPost.postid.toString())
                  //     .set(newPost.toJson());
                  // Navigator.of(context).pop();
                }
              },
              // () {
              //   final newPost = Post(
              //     postid: postIdRandom.nextInt(1000).toString(),
              //     postUserImageUrl: image,
              //     postTitle: postTitleController.text,
              //     postImageUrl: imageUrl,
              //     postDeccription: postDiscriptionController.text,
              //     postTime: DateTime(10),
              //     postFavoriteNumber: )
              // },
              fontSizes: 16,
              borederRadi: 30),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
