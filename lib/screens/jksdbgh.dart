// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:i_click/model/post.dart';
// import 'package:provider/provider.dart';


// class MovieScreen extends StatefulWidget {
//   final Post movie;

//   MovieScreen({
//     super.key,
//     required this.movie,
//   });

//   @override
//   State<MovieScreen> createState() => _MovieScreenState();
// }

// class _MovieScreenState extends State<MovieScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // final srtik = Provider.of<FirebaseServiceProvider>(context);
//     final currentUser = FirebaseAuth.instance.currentUser;
//     // final movieData = Provider.of<MovieProvider>(context);
//     // final film = movieData.moviee;
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(15),
//       child: GridTile(
//         footer: GridTileBar(
//           title: Text(
//             widget.movie.postTitle,
//             style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
//           ),
//           leading: IconButton(
//             onPressed: () {
//               // srtik.toggleLike(
//               //   widget.movie.id,
//               //   currentUser.uid,
//               // );
//             },
//             icon: Icon(Icons.abc),
//             // icon: Icon(Icons.favorite,
//             //     color: widget.movie.likes.contains(currentUser!.uid)
//             //         ? Colors.red
//             //         : Colors.white),
//           ),
//           backgroundColor: Colors.black54,
//         ),
//         child: InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SecondScreen(
//                   movie: widget.movie,
//                   id: widget.movie.postid,
//                 ),
//               ),
//             );
//           },
//           child: Image.network(
//             widget.movie.imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }