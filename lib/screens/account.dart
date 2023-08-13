import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_click/widget/navigationbar.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  List<String> items = [
    '0 shots',
    '10 Collections',
  ];
  List<IconData> icons = [Icons.home, Icons.search];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    // TabController _tabController = TabController(length: 2, vsync: this);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Column(children: [
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 170,
                  child: Image.asset(
                    'assetc/images/Header background.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: SizedBox(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: const Text(
                                  '@brunopham',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
// <<<<<<< gasparyan1_branch
                              const Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Stack(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assetc/images/Avatar.png',
                              width: 80,
                              height: 80,
                            ),
// =======
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: SvgPicture.asset(
                                'assetc/icons/Setting.svg',
                                width: 24,
                                height: 24,
                                color: Colors.white,
                              ),
                            )
// >>>>>>> master
                          ],
                        ),
                      ]),
                    ],
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Bruno Pham',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Da Nang, Vietnam',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 470,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 247, 249),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '220',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Followers',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 103, 101, 101)),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    '150',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Following',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 103, 101, 101)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.network_cell,
                  size: 30,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.install_desktop,
                  size: 30,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
// <<<<<<< gasparyan1_branch
//                 Container(
//                   height: 10,
//                   width: 10,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.blue),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 const Icon(
//                   Icons.facebook,
//                   size: 30,
//                   color: Colors.grey,
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             // Container(
//             //   height: 50,
//             //   width: 470,
//             //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//             //   child: Row(
//             //     crossAxisAlignment: CrossAxisAlignment.center,
//             //     mainAxisAlignment: MainAxisAlignment.center,
//             //     children: [
//             //       Container(
//             //         height: 40,
//             //         width: 170,
//             //         decoration: BoxDecoration(
//             //           borderRadius: BorderRadius.circular(5),
//             //           color: const Color.fromARGB(255, 243, 245, 247),
//             //         ),
//             //         child: TextButton(
//             //           onPressed: () {},
//             //           child: const Text(
//             //             '0 shots',
//             //             style: TextStyle(
//             //               fontSize: 18,
//             //               fontWeight: FontWeight.bold,
//             //               color: Color.fromARGB(255, 31, 108, 171),
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //       Container(
//             //         height: 40,
//             //         width: 170,
//             //         decoration: BoxDecoration(
//             //           borderRadius: BorderRadius.circular(5),
//             //         ),
//             //         child: TextButton(
//             //           onPressed: () {},
//             //           child: const Text(
//             //             '10 Collections',
//             //             style: TextStyle(
//             //               fontSize: 18,
//             //               fontWeight: FontWeight.bold,
//             //               color: Color.fromARGB(255, 31, 108, 171),
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //     ],
//             //   ),
//             // ),
//             // const SizedBox(
//             //   height: 30,
//             // ),
//             // Image.asset(
//             //   'assetc/images/Group0069991.png',
//             // )

//             // Container(
//             //   child: TabBar(
//             //       // controller: _tabController,
//             //       tabs: [
//             //         Tab(
//             //           text: '0 shots',
//             //         ),
//             //         Tab(
//             //           text: '10 Collections',
//             //         )
//             //       ]),
//             // ),
//             // Container(
//             //   child: TabBarView(
//             //       // controller: _tabController,
//             //       children: [Text('hi')]),
//             // )
//             // SliverAppBar(
//             //   pinned: true,
//             //   primary: false,
//             //   elevation: 8.0,
//             //   backgroundColor: Colors.blue,
//             //   title: Align(
//             //     alignment: AlignmentDirectional.center,
//             //     child: TabBar(
//             //         indicatorColor: Colors.greenAccent,
//             //         isScrollable: true,
//             //         tabs: [
//             //           Tab(
//             //             text: '0 shots',
//             //           ),
//             //           Tab(
//             //             text: '10 collections',
//             //           )
//             //         ]),
//             //   ),
//             // ),
//             // SliverToBoxAdapter(
//             //   child: TabBarView(children: [Text('hiii'), Text('myy')]),
//             // )
//           ]),
//           bottomNavigationBar: const NavigationBarScreen()),
// =======
                Text(
                  'Following',
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 103, 101, 101)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assetc/icons/globe.svg',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(81, 81, 198, 1),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                'assetc/icons/u_instagram.svg',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 7,
                width: 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(81, 81, 198, 1),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                'assetc/icons/facebook 1.svg',
                width: 20,
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 243, 245, 247),
                ),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            current = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.all(5),
                          width: 140,
                          height: 45,
                          decoration: BoxDecoration(
                            color: current == index
                                ? const Color.fromRGBO(241, 241, 254, 1)
                                : Colors.white54,
                            borderRadius: current == index
                                ? BorderRadius.circular(10)
                                : BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: GoogleFonts.laila(
                                  fontWeight: FontWeight.bold,
                                  color: current == index
                                      ? const Color.fromRGBO(136, 139, 244, 1)
                                      : Colors.grey),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Icon(
                  icons[current],
                  size: 150,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavigationBarScreen(),
// >>>>>>> master
    );
  }
}
