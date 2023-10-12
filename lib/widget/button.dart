// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  String text;
  void Function()? onPressed;
  double? minWidth;
  Button({
    Key? key,
    required this.text,
    this.onPressed,
    required this.minWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none),
      height: 44,
      minWidth: minWidth,
      color: Theme.of(context).primaryColor,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).indicatorColor,
        ),
      ),
    );
  }
}
