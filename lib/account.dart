import 'package:flutter/material.dart';

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
                height: 200,
                child: Image.asset(
                  'assetc/images/Header background.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 150, left: 220),
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 220),
                child: Row(
                  children: [
                    Text(
                      '@brunopham',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Bruno Pham',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              'Da Nang, Vietnam',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 20,
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
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
                      color: const Color.fromARGB(255, 103, 101, 101)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
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
              SizedBox(
                width: 10,
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
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.facebook,
                size: 30,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(
            height: 20,
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
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
                  width: 100,
                ),
                Text(
                  '10',
                  style: TextStyle(fontSize: 18, color: Colors.black),
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
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assetc/images/mard.png',
          )
        ],
      ),
    );
  }
}
