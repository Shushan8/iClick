// import 'package:flutter/material.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(left: 15, top: 40, right: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // children: [
                //   Icon(
                //     Icons.arrow_back,
                //     size: 35,
                //   ),
//                   SizedBox(
//                     width: 140,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(
//                           Icons.favorite_border,
//                           size: 35,
//                         ),
//                         Icon(
//                           Icons.add_circle_outline_outlined,
//                           size: 35,
//                         ),
//                         Icon(
//                           Icons.backup_outlined,
//                           size: 35,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               child: SingleChildScrollView(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(left: 15, top: 20, right: 15),
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Row(
//                                 children: [
//                                   Image(
//                                     image: AssetImage('assetc/images/images.png'),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(horizontal: 10),
//                                     child: Text(
//                                       'Thanh Pham',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 20),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               Text(
//                                 '1 hour ago',
//                                 style:
//                                     TextStyle(color: Colors.grey, fontSize: 17),
//                               )
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
                    
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 10),
//                       child: const Image(
//                         image: AssetImage(
//                           'assetc/images/msnyz9L6gs4.jpg',
//                         ),
//                         height: 280,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     const Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         Row(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 '125',
//                                 style:
//                                     TextStyle(fontSize: 15, color: Colors.grey),
//                               ),
//                             ),
//                             Icon(
//                               Icons.visibility_outlined,
//                               color: Colors.blue,
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 '20',
//                                 style:
//                                     TextStyle(fontSize: 15, color: Colors.grey),
//                               ),
//                             ),
//                             Icon(
//                               Icons.chat_outlined,
//                               color: Colors.blue,
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 '125',
//                                 style:
//                                     TextStyle(fontSize: 15, color: Colors.grey),
//                               ),
//                             ),
//                             Icon(
//                               Icons.favorite_border,
//                               color: Colors.blue,
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 15, top: 20, right: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Street portrait',
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 20),
//                           ),
//                           Text(
//                             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. ',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.grey,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Container(
//                       child: SizedBox(
//                         height: 160,
//                         child: GridView.builder(
//                           scrollDirection: Axis.vertical,
//                           itemCount: 3,
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                                   crossAxisCount: 1,
//                                   childAspectRatio: 3 / 1,
//                                   mainAxisSpacing: 20,
//                                   mainAxisExtent: 100),
//                           itemBuilder: (context, index) => Padding(
//                             padding: EdgeInsets.only(left: 15, top: 0, right: 15),
//                             child: Container(
//                               width: double.infinity,
//                               height: 100,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(8),
//                                   color: Color.fromARGB(255, 227, 242, 243)),
//                               child: const Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(10),
//                                     child: Image(
//                                       image:
//                                           AssetImage('assetc/images/images.png'),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(top: 10, bottom: 10),
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           'Bruno Pham',
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               fontSize: 17),
//                                         ),
//                                         Padding(
//                                           padding: EdgeInsets.only(
//                                               top: 10, bottom: 10),
//                                           child: Text(
//                                             'Great shot! | love it',
//                                             style: TextStyle(fontSize: 17),
//                                           ),
//                                         ),
//                                         Text(
//                                           '2 mins ago',
//                                           style: TextStyle(
//                                               color: Colors.grey, fontSize: 15),
//                                         )
//                                       ],
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               child: 
//                   Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Image(
//                                       image: AssetImage('assetc/images/images.png'),
//                                     ),
//                       ),
//                       Container(
//                         width: 200,
//                       child: TextFormField(
//                       decoration: InputDecoration(
//                       border: InputBorder.none,
//                       hintText: "Add a comment",
//                         ),
//                       ),
//                 ),
//                     ],
//                   ),
                
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
