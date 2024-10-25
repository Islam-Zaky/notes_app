import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff53ebd7),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (contest) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}