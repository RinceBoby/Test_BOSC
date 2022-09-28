import 'package:flutter/material.dart';

//<<<<<Colors>>>>>//
const kRed = Colors.red;
const kGreen = Colors.green;
const kStar = Colors.amber;
const fieldColor = Color.fromARGB(255, 38, 37, 37);
const kText = Colors.white;
const kTrans = Colors.transparent;

//<<<<<Colors>>>>>//
const kWhite = Colors.white;
const kBlack = Colors.black;
const kBgColor = Color(0xFFDFE9FF);
const kGrey = Color(0xFF8E98AE);
const kNeupColor = Color(0xFFE3ECFD);


Color darkTextColor = const Color(0xFF5B6275);
Color lightTextColor = Colors.grey;
Color foregroundColor = const Color(0xFFF0EEF3);

var outerShadow = [
  BoxShadow(
    blurRadius: 3.0,
    offset: const Offset(-2, -2),
    color: Colors.white.withOpacity(0.7),
  ),
  BoxShadow(
    blurRadius: 3.0,
    offset: const Offset(2, 2),
    color: Colors.black.withOpacity(0.15),
  ),
];