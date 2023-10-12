// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

const primeryColor = Color.fromRGBO(55, 151, 239, 1);

class ConstantAuthen {
  BuildContext context;

  ConstantAuthen({required this.context});

  static const textStyle = TextStyle(fontWeight: FontWeight.bold);
  static const textStyleSwitch =
      TextStyle(fontWeight: FontWeight.w700, color: primeryColor);

  static const textStylebottom =
      TextStyle(fontWeight: FontWeight.w400, color: Colors.grey);

  static const textStylebottom1 =
      TextStyle(fontWeight: FontWeight.w700, color: Colors.black);
}

class ConstantHome {
  static const textStyleUser =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);
  static const textStyleLocationUser =
      TextStyle(color: Colors.black, fontWeight: FontWeight.w400);
}

const List<String> postlist = [
  "assets/post.jpg",
  "assets/post1.jpg",
  "assets/Rectangle.png",
];

const List<String> picList = [
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/6.jpg",
  "assets/Oval.png",
  "assets/2.png",
  "assets/3.png",
  "assets/1.png",
  "assets/Oval.png",
  "assets/2.png",
  "assets/7.jpg",
  "assets/3.png",
  "assets/1.png",
  "assets/Oval.png",
];
