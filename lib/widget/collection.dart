// import 'package:flutter/material.dart';
// import 'package:i_click/class/collectionclass.dart';

// class CollectionScrren extends StatefulWidget {
//   const CollectionScrren({super.key});

//   @override
//   State<CollectionScrren> createState() => _CollectionState();
// }

// class _CollectionState extends State<CollectionScrren> {
//   final List collection = [
//     Collection(imageUrl: 'assetc/images/8.png', text: '70 photos'),
//     Collection(imageUrl: 'assetc/images/9.png', text: '10 videos'),
//     Collection(imageUrl: 'assetc/images/8.png', text: '60 photos')
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: collection.length,
//         itemBuilder: (context, index) => Column(
//           children: [
//             Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Image.asset(
//                   collection[index].imageUrl,
//                 ),
//               ),
//             ),
//             Text(collection[index].text)
//           ],
//         ),
//       ),
//     );
//   }
// }
