// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constant.dart';

// ignore: must_be_immutable
class CreateAccount extends StatelessWidget {
  String text;
  void Function()? onPressed;
  TextStyle? style;
  CreateAccount({
    Key? key,
    required this.text,
    this.onPressed,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
            style: ConstantAuthen.textStylebottom),
        TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: style,
          ),
        ),
      ],
    );
  }
}
