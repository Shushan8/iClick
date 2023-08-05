import 'package:flutter/material.dart';
import 'package:i_click/screens/account.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/text_input.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final lastnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 600,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                              image: AssetImage(
                                'assetc/images/Header background.png',
                              ),
                              height: 165,
                              fit: BoxFit.contain,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: TextInput(
                                controller: nameController,
                                hintext: 'Email',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              child: Text(
                                'Last Name',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: TextInput(
                                controller: lastnameController,
                                hintext: 'Name',
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 0),
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0),
                              child: TextInput(
                                controller: emailController,
                                hintext: 'brunopham@gmail.com',
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButtons(
                          buttonwidth: 350,
                          buttonheight: 50,
                          buttontext: 'SAVE CHANGES',
                          fanction: () {
                             Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Account()));
                          },
                          buttonTextFontSize: 17,
                          buttonborederRadius: 25),
                    ],
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SizedBox(
                          width: 270,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30 ),
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  'Edit profile',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assetc/images/20.png'),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 125,
                          top: 60,
                          child:  Padding(
                              padding:const EdgeInsets.symmetric(
                                  horizontal: 100, vertical: 0),
                              child: Container(
                                 width: 30,
                                 height: 30,
                            decoration: BoxDecoration(color: Colors.purple,
                            borderRadius: BorderRadius.circular(6)),
                                child:const Icon(Icons.camera_alt_outlined, color: Colors.white,))),
                          ),
                        
                      ]),
                      
                    ],
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
