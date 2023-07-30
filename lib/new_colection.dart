import 'package:flutter/material.dart';
import 'package:i_click/add_colections.dart';
import 'package:i_click/provider/provider.dart';
import 'package:i_click/widget/coments.dart';
import 'package:provider/provider.dart';

class NewColectoin extends StatelessWidget {
  const NewColectoin({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
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
                          builder: (context) =>const AddToColections()));
                    },
                    child:const Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                const  Text(
                    'Comments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.backup_outlined,
                        size: 35,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 680,
                        child: GridView.builder(
// <<<<<<< hasmik_branch
//                           scrollDirection: Axis.vertical,
//                           itemCount: 8,
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 1,
//                                   childAspectRatio: 3 / 1,
//                                   mainAxisSpacing: 20,
//                                   mainAxisExtent: 100),
//                           itemBuilder: (context, index) => Padding(
//                             padding:
//                                 EdgeInsets.only(left: 15, top: 0, right: 15),
//                             child: Container(
//                               width: double.infinity,
//                               height: 100,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8),
//                                   color: Color.fromARGB(255, 227, 242, 243)),
//                               child:const Row(
//                                 crossAxisAlignment: CrossAxisAlignment.end,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                    Row(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Padding(
//                                         padding:  EdgeInsets.all(10),
//                                         child: Image(
//                                           image: AssetImage(
//                                               'assetc/images/images.png'),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: EdgeInsets.only(
//                                             top: 10, bottom: 10),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               'Bruno Pham',
//                                               style: TextStyle(
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 17),
//                                             ),
//                                             Padding(
//                                               padding: EdgeInsets.only(
//                                                   top: 10, bottom: 10),
//                                               child: Text(
//                                                 'Great shot! | love it',
//                                                 style: TextStyle(fontSize: 17),
//                                               ),
//                                             ),
//                                             Text(
//                                               '2 mins ago',
//                                               style: TextStyle(
//                                                   color: Colors.grey,
//                                                   fontSize: 15),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(10),
//                                     child: SizedBox(
//                                       width: 45,
//                                       child: Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Text('02'),
//                                           Icon(
//                                             Icons.favorite,
//                                             color: Colors.blue,
//                                           )
//                                         ],
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
// ======
                            scrollDirection: Axis.vertical,
                            itemCount: 8,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 3 / 1,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 100),
                            itemBuilder: (context, index) =>const  Coments(
                                  imageUrl: 'assetc/images/images.png',
                                  texts: 'Bruno Pham',
                                  coments: 'Great shot | love it',
                                   messagetext: '',
                                  iconn: true,
                                  activity: '',
                                  color: false,
                                  like: 'Like',
                                  imageIcon: false,
                                  follow: false,
                                  meseges: false,
                                )),
// >>>>>>> master
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        width: 200,
                        child: TextFormField(
                          decoration:const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment",
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            colorProvider.colorGradient1,
                            colorProvider.colorGradient2
                          ]),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:const Center(
                            child: Text(
                          'Post',
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
