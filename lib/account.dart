import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 150,
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset('assetc/images/Header background.png')),
          // Container(
          //   height: 150,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       color: Colors.black, borderRadius: BorderRadius.circular(20)),
          //   child: const Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       Text(
          //         '@brunopham',
          //         style: TextStyle(fontSize: 7, color: Colors.white),
          //       ),
          //       SizedBox(
          //         width: 120,
          //       ),
          //       Icon(
          //         Icons.home,
          //         size: 10,
          //         color: Colors.white,
          //       )
          //     ],
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Bruno Pham',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Da Nang, Vietnam',
            style: TextStyle(fontSize: 10, color: Colors.grey),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 470,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '220',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Followers',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 103, 101, 101)),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '150',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Following',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 103, 101, 101)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.network_cell,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              Icon(
                Icons.install_desktop,
                size: 30,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue),
              ),
              Icon(
                Icons.facebook,
                size: 30,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            width: 470,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(10)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '0',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'shots',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 103, 101, 101)),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '10',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Collections',
                  style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 103, 101, 101)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
