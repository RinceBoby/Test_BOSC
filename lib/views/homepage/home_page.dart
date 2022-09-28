import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:test_bosc/views/constants/spaces/dimensions.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';
import 'package:test_bosc/views/homepage/widgets/appBar.dart';
import 'package:test_bosc/views/homepage/widgets/custom_button.dart';

class AllNotes extends StatelessWidget {
  const AllNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBgColor,
        title: Text(
          "Note It",
          style: TextStyle(color: kGrey),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            //<<<<<Note_Cards>>>>>//
            
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: CustomButton(
          icon: CupertinoIcons.add,
          onTap: () {},
        ),
      ),
    );
  }
}
