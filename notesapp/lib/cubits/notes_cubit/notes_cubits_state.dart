part of 'notes_cubits_cubit.dart';

@immutable
sealed class NotesCubitsState {
  get note => null;
}

final class NotesCubitsInitial extends NotesCubitsState {}

final class NotesCubitsSuccsses extends NotesCubitsState {}
