import 'package:flutter/material.dart';
// <<<<<<< movsisyan2_branch_
import 'package:flutter_svg/flutter_svg.dart';
// =======
import 'package:i_click/model/comments.dart';
import 'package:i_click/model/post.dart';
// >>>>>>> master
import 'package:i_click/screens/new_colection.dart';
import 'package:i_click/provider/userprovider.dart';
import 'package:i_click/widget/coments.dart';
import 'package:i_click/widget/iconka.dart';
import 'package:i_click/widget/imga_name.dart';
import 'package:provider/provider.dart';

class PostScreen extends StatefulWidget {
  final Post post;
  const PostScreen({super.key, required this.post});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    Post post = Post(postid: '1', 
    //postUserImageUrl: 'assetc/images/msnyz9L6gs4.jpg',
    postTitle: 'postName', 
    postDeccription: '',
    postImageUrl: 'postImageUrl', 
    postTime: DateTime.now(), 
    //postFavoriteNumber: 1,
    );
    int listLength = post.comments.length;
    final userProvider = Provider.of<UserProvider>(context);
    final commentsController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 40, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewColectoin()));
                    },
                    child: SvgPicture.asset(
                      'assetc/icons/back.svg',
                      width: 16,
                      height: 14,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assetc/icons/heart 2.svg',
                          width: 24,
                          height: 24,
                        ),
                        SvgPicture.asset(
                          'assetc/icons/plus1.svg',
                          width: 24,
                          height: 24,
                        ),
                        SvgPicture.asset(
                          'assetc/icons/Upload.svg',
                          width: 24,
                          height: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ImageName(),
                              Row(
                                children: [
                                  Text(
                                    post.postid,//sxalaaa
                                    style:
                                        TextStyle(color: Colors.grey, fontSize: 17),
                                  ),Text(
                                    ' hour ago',
                                    style:
                                        TextStyle(color: Colors.grey, fontSize: 17),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
// <<<<<<< movsisyan2_branch_
//                     const Padding(
//                       padding: EdgeInsets.symmetric(vertical: 10),
//                       child: Image(
//                         image: AssetImage(
//                           'assetc/images/msnyz9L6gs4.jpg',
//                         ),
//                         height: 280,
//                         fit: BoxFit.contain,
// =======
                    // Image(
                    //     image: AssetImage(
                    //       post.postImageUrl
                    //     ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10),
                      child:  InkWell(
                        onTap: () {
                          
                        },
                        child: Image.network(
                           widget.post.postImageUrl,
                           height: 280,
                          fit: BoxFit.contain,),
// >>>>>>> master
                      ),
                        
                      ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '125',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            SvgPicture.asset(
                              'assetc/icons/eye.svg',
                              width: 46,
                              height: 24,
                            ),
                          ],
                        ),
                        Row(
                          children: [
// <<<<<<< movsisyan2_branch_
//                             const Padding(
// =======
                            Padding(
// >>>>>>> master
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                '$listLength',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            SvgPicture.asset(
                              'assetc/icons/Chat.svg',
                              width: 46,
                              height: 21,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'post.postFavoriteNumber',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ),
                            SvgPicture.asset(
                              'assetc/icons/heart.svg',
                              width: 46,
                              height: 21,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Street portrait',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. Eget dictumst vitae enim, felis morbi. Quis risus, neque cursus risus. ',
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.5,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: 160,
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 3,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    childAspectRatio: 3 / 1,
                                    mainAxisSpacing: 20,
                                    mainAxisExtent: 100),
                            itemBuilder: (context, index) => Coments(
                                  imageUrl: userProvider.user[index].imageUrl,
                                  texts: userProvider.user[index].texts,
                                  coments: userProvider.user[index].coments,
                                  messagetext: '',
                                  iconn: false,
                                  activity: '',
                                  like: '',
                                  imageIcon: false,
                                  follow: false,
                                  meseges: false,
                                  color: false,
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Image(
                      image: AssetImage('assetc/images/images.png'),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: TextFormField(
// <<<<<<< movsisyan2_branch_
//                       decoration: const InputDecoration(
// =======
                      controller: commentsController,
                      decoration: InputDecoration(
// >>>>>>> master
                        border: InputBorder.none,
                        hintText: "Add a comment",
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    post.comments.add(Comments(commentsUserImageUrl: 'commentsUserImageUrl', 
                    commentsName: 'commentsName', 
                    commentsText: commentsController.text, 
                    commentsTime: DateTime.now(), 
                    commentsFavoriteNumber: 8));
                  }, child: const Text('add')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// >>>>>>> master
