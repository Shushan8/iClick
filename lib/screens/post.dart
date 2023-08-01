
import 'package:flutter/material.dart';
import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/widget/coments.dart';
import 'package:i_click/widget/iconka.dart';
import 'package:i_click/widget/imga_name.dart';
import 'package:provider/provider.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>const NewColectoin()));
                    },
                    child:const Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                const  SizedBox(
                    width: 140,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.favorite_border,
                          size: 35,
                        ),
                        Icon(
                          Icons.add_circle_outline_outlined,
                          size: 35,
                        ),
                        Icon(
                          Icons.upload,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageName(),
                              Text(
                                '1 hour ago',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 17),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                   const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child:  Image(
                        image: AssetImage(
                          'assetc/images/msnyz9L6gs4.jpg',
                        ),
                        height: 280,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                          const  Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '125',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Iconka(ikonka: Icons.visibility_outlined)
                           
                          ],
                        ),
                        Row(
                          children: [
                         const   Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '20',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Iconka(ikonka: Icons.textsms_outlined)
                           
                          ],
                        ),
                        Row(
                          children: [
                         const   Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '125',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            Iconka(ikonka: Icons.favorite_border)
                            
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street portrait',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. ',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: 160,
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 3 / 1,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 100),
                            itemBuilder: (context, index) => Coments(
                                  imageUrl: userProvider.user[index].imageUrl,
                                  texts: userProvider.user[index].texts,
                                  coments: userProvider.user[index].coments,
                                   messagetext: '',
                                  iconn: false,
                                  activity: '',
                                  like: '',
                                  imageIcon: false,
                                  follow: false,
                                   meseges: false,
                                   color: false,
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage('assetc/images/images.png'),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment",
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// >>>>>>> master
