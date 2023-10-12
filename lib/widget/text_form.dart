// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CastomTextField extends StatelessWidget {
  double size;
  TextEditingController? controller;
  String text;
  IconData icon;
  IconData? iconPassword;
  String? Function(String?)? validator;
  CastomTextField({
    Key? key,
    required this.size,
    this.controller,
    required this.text,
    required this.icon,
    this.iconPassword,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: 44,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide:
                const BorderSide(color: Color.fromRGBO(250, 250, 250, 1)),
          ),
          label: Text(text),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          suffixIcon: Icon(
            iconPassword,
            color: Colors.grey,
          ),
          fillColor: const Color.fromRGBO(250, 250, 250, 1),
          filled: true,
        ),
      ),
    );
  }
}
