import 'package:flutter/material.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/screens/challenge1.dart';
import 'package:i_click/widget/searc_cards.dart';
import 'package:i_click/widget/text_field.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final searcProvider = Provider.of<SearchProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 20),
              child: TextFields(
                icon: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 650,
                width: 380,
                child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 20,
                      mainAxisExtent: 380,
                    ),
                    itemBuilder: (context, index) => InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Challenge1()));
                      },
                      child: SearchCards(
                            searcCardsImages:
                                searcProvider.search[index].searcCardsImages,
                            searcCartsText:
                                searcProvider.search[index].searcCartsText,
                            searcCartsText2:
                                searcProvider.search[index].searcCartsText2,
                            searcCardsTextFals:
                                searcProvider.search[index].searcCardsTextFals,
                            searcCardsTextTru:
                                searcProvider.search[index].searcCardsTextTru,
                                searcCardsText1Fals: searcProvider.search[index].searcCardsText1Fals,
                          ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
