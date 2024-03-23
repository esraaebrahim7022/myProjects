import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubits_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitsCubit, NotesCubitsState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitsCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NoteItem(note: notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
