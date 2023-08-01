import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Challenge1 extends StatelessWidget {
  const Challenge1({super.key});

  @override
  Widget build(BuildContext context) {
     final List image = [
      'assetc/images/11.png',
      'assetc/images/10.png',
    ];
    final List trend = ['assetc/images/12.png', 'assetc/images/12.png'];
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage(
                    'assetc/images/images1.png',
                  ),
                  height: 276,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 250, left: 50, right: 50),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      height: 55,
                      width: 360,
                      child: const Center(
                        child: Text(
                          'STREET NIGHT PORTRAIT',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(122, 158, 158, 158)),
                    child: Icon(
                      Icons.arrow_back,
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Container(
                      height: 55,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(241, 241, 254, 1),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText:
                              'Deadline                           30 days left',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
                    child: Container(
                      height: 55,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromRGBO(241, 241, 254, 1),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText:
                              'Prize                                         100.00',
                          hintStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 65, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'R E A D Y   T O   W I N   T H I S   ',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                        GradientText(
                          'C H A L L E N G E',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                          colors: const [
                            Color.fromARGB(255, 81, 81, 198),
                            Color.fromARGB(255, 136, 139, 244)
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 65, vertical: 0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color.fromRGBO(136, 139, 244, 1),
                        ),
                        child: const Center(
                          child: Text(
                            'SUBMIT YOUR SHOT',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       GradientText(
                         '350',
                         style: const TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w500,
                         ),
                         colors: const [
                           Color.fromARGB(255, 81, 81, 198),
                           Color.fromARGB(255, 136, 139, 244)
                         ],
                       ),
                    
                    const   Text(
                         'people have joined this challenge ',
                         style: TextStyle(
                           fontSize: 15,
                           fontWeight: FontWeight.w500,
                           color: Color.fromRGBO(143, 144, 167, 1),
                         ),
                       ),
                     ],
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromRGBO(136, 139, 244, 1),
                            ),
                            height: 10,
                            width: 10,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              const Text(
                                'Challenge ',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: const Color.fromRGBO(136, 139, 244, 1),
                                  ),
                                  height: 10,
                                  width: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        'Lorem ipsum dolor sit amet,consectetur adipiscing elit. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis risus,',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(88, 98, 116, 1),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          'Lorem ipsum dolor sit amet,consectetur adipiscing elit. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis risus,',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(88, 98, 116, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromRGBO(136, 139, 244, 1),
                      ),
                      height: 10,
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Text(
                            'Inspiration ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromRGBO(136, 139, 244, 1),
                              ),
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: image.length,
                    itemBuilder: (context, index) => Container(
                      child: Image.asset(
                        image[index],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromRGBO(136, 139, 244, 1),
                        ),
                        height: 10,
                        width: 10,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          const Text(
                            'Trending ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color.fromRGBO(136, 139, 244, 1),
                              ),
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 0, horizontal: 10),
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trend.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          child: Image.asset(
                            trend[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


