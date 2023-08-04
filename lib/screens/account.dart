import 'package:flutter/material.dart';
import 'package:i_click/widget/navigationbar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      fontSize: 15, color: Color.fromARGB(255, 103, 101, 101)),
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
                Icons.facebook,
                size: 30,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            width: 470,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 243, 245, 247),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '0 shots',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 31, 108, 171),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      '10 Collections',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 31, 108, 171),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assetc/images/Group0069991.png',
          )
        ],
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }
}
