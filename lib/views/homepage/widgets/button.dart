import 'package:flutter/material.dart';
import 'package:test_bosc/views/constants/spaces/dimensions.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final String text;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        backgroundColor: kGrey,
        shape: RoundedRectangleBorder(borderRadius: kRadius10),
        fixedSize: const Size(130, 50),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: kBlack,
        ),
      ),
    );
  }
}
