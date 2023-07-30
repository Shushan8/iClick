import 'package:flutter/material.dart';
import 'package:i_click/messeges.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/widget/coments.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Activity extends StatelessWidget {
  const Activity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     const Text(
                        'Activity',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      GradientText(
                        '(03)',
                        style:const TextStyle(
                          fontSize: 22,fontWeight: FontWeight.bold,
                        ),
                        colors:const [
                          Color.fromARGB(255, 81, 81, 198),
                          Color.fromARGB(255, 136, 139, 244)
                        ],
                      ),
                     
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>const Message()));
                        },
                        child:const Icon(
                          Icons.backup_outlined,
                          size: 35,
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
                                    childAspectRatio: 4 / 1,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 120),
                            itemBuilder: (context, index) =>  Coments(
                                  imageUrl: userProvider.user[index].imageUrl,
                                  texts: userProvider.user[index].texts,
                                  coments: userProvider.user[index].coments,
                                  iconn: userProvider.user[index].iconn,
                                  activity: userProvider.user[index].activity,
                                  messagetext:userProvider.user[index].messagetext ,
                                  like: userProvider.user[index].like,
                                  imageIcon: userProvider.user[index].imageIcon,
                                  color: false,
                                  follow: userProvider.user[index].follow,
                                  meseges: false,
                                )),
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
