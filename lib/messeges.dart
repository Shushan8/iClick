import 'package:flutter/material.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/screens/glxavor.dart';
import 'package:i_click/widget/coments.dart';
import 'package:provider/provider.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding:const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const  Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
               const   Text(
                    'Message',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>const Glxavor()));
                        },
                        child:const Icon(
                          Icons.edit_square,
                          size: 35,
                          color: Colors.black,
                        ),
                      )
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
                        height: 700,
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 6,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                  childAspectRatio: 3 / 1,
                                  mainAxisSpacing: 20,
                                  mainAxisExtent: 100),
                          itemBuilder: (context, index) => 
                          Coments(
                                  imageUrl: userProvider.message[index].imageUrl,
                                  texts:  userProvider.message[index].texts,
                                  coments:  userProvider.message[index].coments,
                                  iconn:  userProvider.message[index].iconn,
                                  activity:  userProvider.message[index].activity,
                                  like:  userProvider.message[index].like,
                                   messagetext: userProvider.message[index].messagetext,
                                  imageIcon:  userProvider.message[index].imageIcon,
                                  follow:  userProvider.message[index].follow,
                                  color: userProvider.message[index].color,
                                   meseges: userProvider.message[index].meseges,
                                )
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
