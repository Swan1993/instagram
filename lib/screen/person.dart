import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  const Person({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
      ),
      body: const Center(
        child: Text('Person'),
      ),
    );
  }
}
