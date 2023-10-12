import 'package:flutter/material.dart';
import 'package:instagram/main-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(55, 151, 239, 1),
          primary: const Color.fromRGBO(55, 151, 239, 1),
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
