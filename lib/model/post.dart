import 'package:i_click/model/comments.dart';
import 'package:json_annotation/json_annotation.dart';
part 'post.g.dart';

@JsonSerializable()
class Post {
  final String postid;
  final String postTitle;
  final String postImageUrl;
  final String postDeccription;
  final DateTime postTime;
  final List<Comments> comments = [];
  // final double postFavoriteNumber;

  Post(
      {required this.postid,
      required this.postTitle,
      required this.postImageUrl,
      required this.postDeccription,
      required this.postTime,
      // required this.postFavoriteNumber,
      });
       factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
