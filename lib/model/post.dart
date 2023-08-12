import 'package:i_click/model/comments.dart';

class Post {
  final String postid;
  final String postUserImageUrl;
  final String postName;
  final String postImageUrl;
  final DateTime postTime;
  final List<Comments> comments = [];
  final double postFavoriteNumber;

  Post(
      {required this.postid,
      required this.postUserImageUrl,
      required this.postName,
      required this.postImageUrl,
      required this.postTime,
      required this.postFavoriteNumber,
      });
}
