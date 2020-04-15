
import 'package:senior_design/Model/JournalEntry.dart';
import 'package:senior_design/Model/entry.dart';
import 'package:senior_design/Model/journal.dart';

class JournalViewModel
{
  Journal helmJournal;
  JournalViewModel(){
    helmJournal = new Journal();
  }


  void addEntry(String title, String body )
  {
    Entry entry = Entry(body: body, title: title, dateTime: DateTime.now());
    helmJournal.addEntry(entry);
  }
}