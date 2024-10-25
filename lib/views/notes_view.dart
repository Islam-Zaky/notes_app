import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        // mini: true,
        // shape: CircleBorder(
        //   side: BorderSide(
        //       width: 1,
        //       // color: Color(0xffffcd7a),
        //       color: Colors.black),
        // ),
        backgroundColor: Color(0xff53ebd7),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              context: context,
              builder: (contest) {
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(
          Icons.add,
          // size: 70,
        ),
      ),
      body: NotesViewBody(),
    );
  }
}
