import 'package:senior_design/Model/entry.dart';
import 'package:senior_design/Model/journal.dart';
import 'package:test/test.dart';

/// This source file runs a series of test on the [Journal] object.

void main() {
  Journal testJournal;
  maxNumberEntriesTest(testJournal);
}

void maxNumberEntriesTest(Journal testJournal) {
  // Start test
  test(
    """
  Journal.addEntry() should keep writting the Journal as long as there is 
  room in the device's storage """,
    () {
      expect(() {
        var counter = 0;
        while (true) {
          counter++;
          testJournal.addEntry(Entry.now());
        }
        // Looking for at least one year of entriess
      }, greaterThan(365));
    },
  );

  // Test clean up
  testJournal.entryList.forEach((element) {
    testJournal.removeEntry(element);
  });
}

void maxCharacterCountTest(Entry testEntry) {
  testEntry.body = 'Sample string';
  test('''
  Entry.body member should be larger than 500 character maximum.
  ''', () {
    expect(() {
      for (var i = 0; i < 10; i++) {
        testEntry.body = testEntry.body + '0123456789';
      }
      return testEntry.body.length;
      // Looking for at leat 500 characters in a body String
    }, greaterThan(500));
  });
}
