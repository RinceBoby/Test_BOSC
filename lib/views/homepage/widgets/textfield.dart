import 'package:flutter/material.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required this.controller,
    required this.label,
    required this.caps,
  }) : super(key: key);

  final TextEditingController controller;
  final String label;
  final TextCapitalization caps;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: caps,
      style: const TextStyle(color: kWhite),
      controller: controller,
      decoration: InputDecoration(
        hintText: label,
        labelStyle: TextStyle(color: kWhite.withOpacity(.5)),
        border: const OutlineInputBorder(),
        filled: true,
        fillColor: kGrey,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: kWhite),
        ),
        
      ),
    );
  }
  
}
