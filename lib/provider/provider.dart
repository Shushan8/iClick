import 'package:flutter/material.dart';

class ColorGradient with ChangeNotifier{
List text= [
  'Collections',
  'Comment Likes',
  'Followers',
  'Likes',
  'Donate',

];
  
final  colorGradient1 =const Color.fromARGB(255, 81, 81, 198);
final  colorGradient2 =const Color.fromARGB(255, 136, 139, 244);
bool _flag = true;
void iconss(){
  _flag = !_flag;
}
}
