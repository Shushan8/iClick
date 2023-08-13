import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:i_click/model/post.dart';
import 'package:i_click/provider/provider.dart';
import 'package:i_click/widget/text_field.dart';
import 'package:i_click/widget/text_filed_regist.dart';
import 'package:i_click/widget/text_input.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
// import 'package:shop/models/product.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final postIdRandom = Random();
  final postTitleController = TextEditingController();
  final postDiscriptionController = TextEditingController();
  final postController = FirebaseFirestore.instance.collection('post');

  // TextEditingController titlecontroller = TextEditingController();
  // TextEditingController descriptioncontroller = TextEditingController();
  // TextEditingController priccontroller = TextEditingController();
  File? image;
  final formKey = GlobalKey<FormState>();
  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) return;
    final imageTemporary = File(image.path);
    setState(() {
      this.image = imageTemporary;
    });
  }

  final random = Random();

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150,
                  height: 150,
                  child: image == null
                      ? Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(colors: [
                              colorProvider.colorGradient1,
                              colorProvider.colorGradient2
                            ]),
                          ),
                          child: IconButton(
                              iconSize: 100,
                              color: Colors.white,
                              onPressed: pickImage,
                              icon: const Icon(Icons.camera_alt)),
                        )
                      : Image.file(image!)),
                      SizedBox(height: 50,),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Title',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 247, 249),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 246, 247, 249)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 246, 247, 249)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        textInputAction: TextInputAction.next,
                        controller: postTitleController,
                        // decoration: const InputDecoration(
                        //     filled: true,
                        //     fillColor: Color.fromARGB(255, 202, 201, 216),
                        //     hintText: 'Name of product',
                        //     border: OutlineInputBorder()),
                        onSaved: (String? value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter product Name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        maxLines: 3,
                        controller: postDiscriptionController,
                        decoration: InputDecoration(
                          hintText: 'Descripton',
                          filled: true,
                          fillColor: const Color.fromARGB(255, 246, 247, 249),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 246, 247, 249)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 246, 247, 249)),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        // decoration: const InputDecoration(
                        //     filled: true,
                        //     fillColor: Color.fromARGB(255, 202, 201, 216),
                        //     hintText: 'Descripton',
                        //     border: OutlineInputBorder()),
                        onSaved: (String? value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter product description';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      InkWell(
                        child: Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                colorProvider.colorGradient1,
                                colorProvider.colorGradient2
                              ]),
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Center(
                              child: Text(
                            'Add Post',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 20),
                          )),
                        ),
                        onTap: () async {
                          if (formKey.currentState!.validate() == false) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Somthing went wrong')),
                            );
                          } else {
                            String uniqName = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            Reference storageReferece =
                                FirebaseStorage.instance.ref();
                            Reference bucketRef =
                                storageReferece.child('images');
                            Reference imageRef = bucketRef.child(uniqName);
                            final snapshot = await imageRef
                                .putFile(image!)
                                .whenComplete(() => null);
                            final imageUrl =
                                await snapshot.ref.getDownloadURL();
                            final newPost = Post(
                              postid: postIdRandom.nextInt(1000).toString(),
                              postTitle: postTitleController.text,
                              postImageUrl: imageUrl,
                              postDeccription: postDiscriptionController.text,
                              postTime: DateTime(10),
                            );
                            postController
                                .doc(newPost.postid.toString())
                                .set(newPost.toJson());
                            Navigator.of(context).pop();

                            // Post([],
                            //     imageUrl: imageUrl,
                            //     description: descriptioncontroller.text,
                            //     id: random.nextInt(1000).toString(),
                            //     price: double.parse(priccontroller.text),
                            //     title: titlecontroller.text);
                            // FirebaseFirestore.instance
                            //     .collection('products')
                            //     .doc(newProduct.id)
                            //     .set(newProduct.toJson());
                          }
                        },
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
