import 'package:flutter/material.dart';

class SearchCards extends StatelessWidget {
  const SearchCards(
      {super.key,
      required this.searcCartsText,
      required this.searcCartsText2,
      required this.searcCardsTextTru,
      required this.searcCardsTextFals,
      required this.searcCardsImages});
  final String searcCartsText;
  final String searcCartsText2;
  final bool searcCardsTextTru;
  final bool searcCardsTextFals;
  final String searcCardsImages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.amber),
          height: double.infinity,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              searcCardsImages,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            child: Container(
          width: double.infinity,
          height: double.infinity,
         child:
         ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:
             Image.asset('assetc/images/270591.png', fit: BoxFit.fill,))
        )),
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                searcCardsTextTru
                    ? Text(
                        searcCartsText,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    : Container(),
                searcCardsTextFals
                    ? Text(
                        searcCartsText2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      )
                    : Container()
              ],
            ),
          ),
        )
      ]),
    );
  }
}
