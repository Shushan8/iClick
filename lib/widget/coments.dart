import 'package:flutter/material.dart';
import 'package:i_click/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Coments extends StatelessWidget {
  const Coments(
      {super.key,
      required this.imageUrl,
      required this.texts,
      required this.coments,
      required this.activity,
      required this.iconn,
      required this.like,
      required this.imageIcon,
      required this.follow,
      required this.meseges,
      required this.messagetext,
      required this.color});
  final String imageUrl;
  final String texts;
  final String coments;
  final String activity;
  final String like;
  final String messagetext;

  final bool imageIcon;
  final bool iconn;
  final bool follow;
  final bool meseges;
  final bool color;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 0, right: 15),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color
                ? Color.fromARGB(255, 246, 247, 249)
                : Color.fromARGB(255,241, 241, 254)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(imageUrl),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        texts,
                        style: const TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Text(
                              coments,
                              style: const TextStyle(fontSize: 17),
                            ),
                            GradientText(
                              activity,
                              style: const TextStyle(
                                fontSize: 17,
                              ),
                              colors: [
                                colorProvider.colorGradient1,
                                colorProvider.colorGradient2
                              ],
                            ),
                            Text(
                              messagetext,
                              style: TextStyle(
                                  fontSize: 17,
                                  color: color ? Colors.grey : Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            '2 mins ago       ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            like,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(children: <Widget>[
              Center(
                child: imageIcon ? const ImagesIconss() : Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Positioned(
                  child: Column(
                    children: [follow ? const Follow() : Container()],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Positioned(
                  child: meseges
                      ? IconMessesges(
                          color: color,
                        )
                      : Container(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Positioned(
                  child: iconn ? const IconFavorite() : Container(),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class IconFavorite extends StatelessWidget {
  const IconFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '02',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(
                    130,
                    130,
                    130,
                    130,
                  )),
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    colorProvider.colorGradient1,
                    colorProvider.colorGradient2,
                  ],
                ).createShader(bounds);
              },
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagesIconss extends StatelessWidget {
  const ImagesIconss({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                width: 80, child: Image.asset('assetc/images/5IHz5WhosQE.png')),
          ),
        ],
      ),
      Positioned(
          left: 75,
          child: Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 81, 81, 198),
                    Color.fromARGB(255, 136, 139, 244),
                  ],
                ).createShader(bounds);
              },
              child: const Icon(
                Icons.favorite,
                size: 15,
                color: Colors.white,
              ),
            ),
          ))
    ]);
  }
}

class Follow extends StatelessWidget {
  const Follow({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
          onTap: () {},
          child: Container(
              width: 70,
              height: 30,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: const BorderSide(color: Colors.purple),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: GradientText(
                  'Follow',
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                  colors: [
                    colorProvider.colorGradient1,
                    colorProvider.colorGradient2
                  ],
                ),
              ))),
    );
  }
}

class IconMessesges extends StatelessWidget {
  const IconMessesges({super.key, required this.color});
  final bool color;

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorGradient>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GradientText(
              '20',
              style: const TextStyle(),
              colors:color
                      ? [Colors.grey, Colors.grey]
                      :  [
                colorProvider.colorGradient1,
                colorProvider.colorGradient2
              ],
            ),
            ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: color
                      ? [Colors.grey, Colors.grey]
                      : [
                          colorProvider.colorGradient1,
                          colorProvider.colorGradient2
                        ],
                ).createShader(bounds);
              },
              child: const Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
