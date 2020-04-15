import 'entry.dart';
import 'package:json_store/json_store.dart';
export 'entry.dart';

/// Used to manage each [Entry] being access and created on the device.
class Journal {
  /// The list of each [Entry] stored on the device.
  /// Persistance kept by [jsonStore] object
  List<Entry> entryList;

  Journal() {
    this.entryList = new List<Entry>();
    _loadEntries();
  }

  /// Used to identify the JSON objects in the device storage.
  final String keyPrefix = 'entry-';

  /// A [JsonStore] database for reading/writing the device storage.
  JsonStore jsonStore = JsonStore();

  /// Adds a new [Entry] to the [entryList] and to [JsonStore] in JSON format.
  /// If [dateTime] is not provided, it's initialized with [DateTime.now()]
  addEntry(Entry entry) async {
    entry.dateTime ?? DateTime.now();
    entryList.add(entry);
    String entryKey = '$keyPrefix${entry.dateTime}';
    Map<String, dynamic> entryJson = entry.toJson();
    print(entryJson);
    // Write to the device with the JsonStore object
    await jsonStore.setItem(entryKey, entryJson);
  }

  /// Removes the [Entry] provided from both [jsonStore] and [entryList]
  removeEntry(Entry entry) async {
    final String entryKey = '$keyPrefix${entry.dateTime}';

    // delete from storage
    await jsonStore.deleteItem(entryKey);

    print('deleting: $entry');

    // Delete from object list
    entryList.remove(entry);
  }

  /// Remove an [Entry] at a specified index.
  /// A wrapper for the [removeEntry] method.
  removeEntryAt(int index) {
    removeEntry(entryList[index]);
  }

  /// Accesses [entryList] to return a Stream of the [Entry] elements.
  Stream<Entry> getStream() async* {
    Stream.fromIterable(entryList);
  }

  /// Loads each [Entry] from the local storage.
  _loadEntries() async {
    List<Map<String, dynamic>> jsonEntries =
        await jsonStore.getListLike('$keyPrefix%');

    entryList = jsonEntries != null
        ? jsonEntries.map((e) => Entry.fromJson(e)).toList()
        : [];
  }
}
