import 'package:flutter/material.dart';
import 'package:i_click/screens/editprofile.dart';
import 'package:i_click/widget/container.dart';
import 'package:i_click/widget/navigationbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                    image: AssetImage(
                      'assetc/images/Dark Background.png',
                    ),
                    fit: BoxFit.contain,
                    height: 890),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
                  child: Container(
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromRGBO(255, 255, 255, 0.1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assetc/images/20.png'),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            'thanphamdhbk@gmail.com',
                            style: TextStyle(
                              color: Color.fromRGBO(192, 192, 192, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Bruno Pham',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(51.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.edit_square,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const ContainerWidget(
                  text: 'Email',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 65),
                  child: ContainerWidget(
                    text: 'Instagram',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 130),
                  child: ContainerWidget(
                    text: 'Twitter',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 195),
                  child: ContainerWidget(
                    text: 'Website',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 260),
                  child: ContainerWidget(
                    text: 'Paypal',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 325),
                  child: ContainerWidget(
                    text: 'Change password',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 390),
                  child: ContainerWidget(
                    text: 'About i.click',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 455),
                  child: ContainerWidget(
                    text: 'Terms & privacy',
                  ),
                ),
                InkWell(
                  onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const EditProfile()));
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 690),
                    child: Container(
                      height: 42,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: const Center(
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 699),
                  child: Icon(Icons.logout),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 200, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assetc/images/Home 1.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 175,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset('assetc/images/Home 2.png'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavigationBarScreen(),
    );
  }
}
