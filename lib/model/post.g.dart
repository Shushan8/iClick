// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      postid: json['postid'] as String,
      postTitle: json['postTitle'] as String,
      postImageUrl: json['postImageUrl'] as String,
      postDeccription: json['postDeccription'] as String,
      postTime: DateTime.parse(json['postTime'] as String),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'postid': instance.postid,
      'postTitle': instance.postTitle,
      'postImageUrl': instance.postImageUrl,
      'postDeccription': instance.postDeccription,
      'postTime': instance.postTime.toIso8601String(),
    };
