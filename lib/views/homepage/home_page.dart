import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:test_bosc/controller/notes_provider.dart';
import 'package:test_bosc/views/constants/styles/colors.dart';
import 'package:test_bosc/views/homepage/widgets/bottom_sheet.dart';
import 'package:test_bosc/views/homepage/widgets/notes_card.dart';

class AllNotes extends StatelessWidget {
  AllNotes({super.key});

  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBlack,
      appBar: AppBar(
        backgroundColor: kBlack,
        title: Row(
          children: const [
            Text(
              "Note It...",
              style: TextStyle(
                color: kGrey,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              CupertinoIcons.pen,
              size: 30,
              color: kGrey,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Consumer<NotesProvider>(
          builder: (context, NotesProvider provider, child) {
            return provider.getNotes.isNotEmpty
                ? ListView.builder(
                    itemCount: provider.getNotes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: NotesCard(
                          size: size,
                          notes: provider.getNotes[index],
                          index: index,
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text(
                      "No notes found!",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 16,
                      ),
                    ),
                  );
          },
        ),
      ),

      //<<<<<FloatingActionButton>>>>>//
      floatingActionButton: FloatingActionButton(
        backgroundColor: kGrey,
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25.0),
              ),
            ),
            backgroundColor: kTrans,
            context: context,
            isScrollControlled: true,
            builder: (context) => BottomSheetWidget(
              titleController: titleController,
              descriptionController: descriptionController,
            ),
          );
        },
        child: const Icon(
          CupertinoIcons.add,
          color: kBlack,
          size: 30,
        ),
      ),
    );
  }
  
}

