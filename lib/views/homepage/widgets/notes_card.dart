import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_bosc/controller/notes_provider.dart';
import 'package:test_bosc/model/notes_model.dart';
import 'package:test_bosc/views/constants/spaces/dimensions.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';

class NotesCard extends StatelessWidget {
  const NotesCard({
    Key? key,
    required this.size,
    required this.notes,
    required this.index,
  }) : super(key: key);

  final Size size;
  final Notes notes;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        Provider.of<NotesProvider>(context, listen: false).removeNote(index);
      },
      child: Container(
        height: 100,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: kRadius10,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        child: Row(
          children: [
            SizedBox(
              width: size.width * .2,
              child: const Center(
                child: Icon(
                  CupertinoIcons.rectangle_fill_on_rectangle_angled_fill,
                ),
              ),
            ),
            SizedBox(
              width: size.width * .7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notes.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kHeight05,
                  Text(
                    notes.description,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}