import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_bosc/controller/notes_provider.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';
import 'package:test_bosc/views/homepage/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kBlack,
          textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
        ),
        home: AllNotes(),
      ),
    );
  }
}
