import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/constant.dart';

part 'notes_cubits_state.dart';

class NotesCubitsCubit extends Cubit<NotesCubitsState> {
  NotesCubitsCubit() : super(NotesCubitsInitial());

  List<NoteModel>? notes;
  fetchAllNote() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesCubitsSuccsses());
  }
}
