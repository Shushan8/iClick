import 'package:flutter/material.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/screens/home.dart';
import 'package:i_click/widget/elevatedbutton.dart';
import 'package:i_click/widget/searc_cards.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({super.key});

  @override
  State<SelectCategory> createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  final List img = [
    'assetc/images/Cardss.png',
    'assetc/images/Cards (3).png',
    'assetc/images/Cards (1).png',
    'assetc/images/Cards (2).png',
  ];
  @override
  Widget build(BuildContext context) {

    final collescts = Provider.of<Collect>(context);
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 const Image(
//                   image: AssetImage(
//                     'assetc/images/Header background.png',
//                   ),
//                   height: 165,
//                   fit: BoxFit.contain,
// =======
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              const Image(
                image: AssetImage(
                  'assetc/images/Header background.png',

                ),
                height: 165,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 70),
                child: Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'i.click',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Who are you?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 430,
            width: double.infinity,
            child: GridView.builder(
              itemCount: img.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
              ),
              itemBuilder: (context, index) => Image.asset(
                img[index],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: GradientText(
              'SHARE - INSPIRE - CONNECT',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
              colors: const [
                Color.fromARGB(255, 81, 81, 198),
                Color.fromARGB(255, 136, 139, 244)
              ],
            ),
// <<<<<<< HEAD
//             const Padding(
//               padding: EdgeInsets.all(10.0),
//               child: Text(
//                 'Who are you?',
//                 style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 height: 430,
//                 width: double.infinity,
//                 child: GridView.builder(
//                   itemCount: img.length,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2 / 2,
//                     mainAxisExtent: 180,
//                     mainAxisSpacing: 10,
//                     crossAxisSpacing: 10
//                   ),
//                   itemBuilder: (context, index) => SearchCards(
//                               searcCardsImages:
//                                   collescts.collect[index].searcCardsImages,
//                               searcCartsText:
//                                   collescts.collect[index].searcCartsText,
//                               searcCartsText2:
//                                   collescts.collect[index].searcCartsText2,
//                               searcCardsTextFals:
//                                   collescts.collect[index].searcCardsTextFals,
//                               searcCardsTextTru:
//                                   collescts.collect[index].searcCardsTextTru,
//                                    searcCardsText1Fals: collescts.collect[index].searcCardsText1Fals,
//                             ),),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: GradientText(
//                 'SHARE - INSPIRE - CONNECT',
//                 style: const TextStyle(
//                   fontSize: 17,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 colors: const [
//                   Color.fromARGB(255, 81, 81, 198),
//                   Color.fromARGB(255, 136, 139, 244)
//                 ],
//               ),
//             ),
//             ElevatedButtons(
//                 whdth: 300,
//                 height: 50,
//                 textbutton: ' EXPLORE NOW',
//                 fanction: () {
//                   Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => const Home()));
//                 },
//                 fontSizes: 17,
//                 borederRadi: 25),
//           ],
          // ),
          ),
          ElevatedButtons(
              whdth: 300,
              height: 50,
              textbutton: ' EXPLORE NOW',
              fanction: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
              fontSizes: 17,
              borederRadi: 25),
        ],
      ),
    );
  }
}
