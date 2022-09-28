import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_bosc/controller/notes_provider.dart';
import 'package:test_bosc/views/constants/spaces/dimensions.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';
import 'package:test_bosc/views/homepage/widgets/button.dart';
import 'package:test_bosc/views/homepage/widgets/textfield.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({
    Key? key,
    required this.titleController,
    required this.descriptionController,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController descriptionController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          kHeight30,
          //<<<<<Add_New_Note>>>>>//
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "new note".toUpperCase(),
              style: const TextStyle(
                color: kWhite,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          kHeight15,
          TextFormFieldWidget(
            controller: titleController,
            label: "Title",
            caps: TextCapitalization.words,
          ),
          kHeight10,
          TextFormFieldWidget(
            controller: descriptionController,
            label: "Description",
            caps: TextCapitalization.sentences,
          ),
          kHeight15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button(
                text: "Add Note",
                ontap: () {
                  Provider.of<NotesProvider>(context, listen: false).addNotes(
                    titleController.text,
                    descriptionController.text,
                    
                  );
                  titleController.clear();
                  descriptionController.clear();
                  Navigator.pop(context);
                },
              ),
              kWidth10,
              Button(
                text: "Cancel",
                ontap: () {
                  Navigator.pop(context);
                },
              ),
              kWidth10,
            ],
          ),
        ],
      ),
    );
  }
}
