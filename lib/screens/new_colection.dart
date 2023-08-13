import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_click/screens/add_colections.dart';
import 'package:i_click/widget/coments.dart';
import 'package:i_click/widget/elevatedbutton.dart';

class NewColectoin extends StatelessWidget {
  const NewColectoin({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AddToColections()));
                    },
                    child: SvgPicture.asset(
                      'assetc/icons/back.svg',
                      width: 18,
                      height: 18,
                    ),
                  ),
                  const Text(
                    'Comments',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assetc/icons/Edit Square.svg',
                        width: 18,
                        height: 18,
                      ),
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
                            scrollDirection: Axis.vertical,
                            itemCount: 8,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 3 / 1,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 100),
                            itemBuilder: (context, index) => const Coments(
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
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment",
                          ),
                        ),
                      ),
                    ),
                    ElevatedButtons(
                      fanction: () {},
                      whdth: 60,
                      fontSizes: 12,
                      height: 40,
                      borederRadi: 50,
                      textbutton: 'Post',
                    )
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
