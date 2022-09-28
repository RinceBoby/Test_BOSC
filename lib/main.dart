import 'package:flutter/material.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';
import 'package:test_bosc/views/homepage/home_page.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: kBgColor,
        appBarTheme:const AppBarTheme()
      ),
      home: const AllNotes(),
    );
  }
}
