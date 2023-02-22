import 'package:flutter/material.dart';

import 'screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Shop",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
