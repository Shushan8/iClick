import 'package:flutter/material.dart';

class YourCollection extends StatefulWidget {
  const YourCollection({super.key});

  @override
  State<YourCollection> createState() => _YourCollectionState();
}

class _YourCollectionState extends State<YourCollection> {
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)),
              width: 180,
              child: Image.asset(
                'assetc/images/Cards.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
                child: ElevatedButton(
              onPressed: () => setState(() => _flag = !_flag),
              style: ElevatedButton.styleFrom(
                backgroundColor: _flag
                    ?const Color.fromARGB(87, 136, 140, 244)
                    :const Color.fromARGB(
                        0, 255, 255, 255), // This is what you need!
              ),
              child: Container(),
            )),
            Positioned(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => setState(() => _flag = !_flag),
                  child: SizedBox(
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: _flag
                          ? Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                               const SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 50.0,
                                  ),
                                ),
                                ShaderMask(
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
                                  child:const Icon(
                                    Icons.check_circle,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            )
                          : Container(
                              
                            ),
                    ),
                  ),
                ),
               const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Center(
                      child: Text(
                    'PORTRAIT PHOTOGRAPHY',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                       fontSize: 18,
                       fontWeight: FontWeight.w700),
                  )),
                ),
              ],
            )),
          ])),
    );
  }
}
