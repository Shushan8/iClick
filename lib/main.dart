import 'package:flutter/material.dart';
import 'package:i_click/add_colections.dart';
import 'package:i_click/cteat_colections.dart';
import 'package:i_click/home.dart';
import 'package:i_click/new_colection.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:CreatNewColections (),
    );
  }
}