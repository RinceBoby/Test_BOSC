import 'package:flutter/cupertino.dart';
import 'package:test_bosc/model/notes_model.dart';

class NotesProvider extends ChangeNotifier{

  //<<<<<Note_List>>>>>//
  List<Notes> notes = [];

  List<Notes> get getNotes{
    return notes;
  }

  //<<<<<Add_Note>>>>>//
  void addNotes(String title,String description){
    Notes note = Notes(title: title, description: description);
    notes.add(note);
    notifyListeners();
  }

  //<<<<<Remove_Note>>>>>//
  void removeNote(int index){
    notes.removeAt(index);
    notifyListeners();
  }

  
}