import 'entry.dart';
import 'package:json_store/json_store.dart';

/// Used to manage each [Entry] being access and created on the device.
class Journal {
  /// The list of each [Entry] stored on the device.
  /// Persistance kept by [_jsonStore] object
  List<Entry> entryList;

  Journal({this.entryList}) {
    _loadEntries();
  }

  /// Used to identify the JSON objects in the device storage.
  final String keyPrefix = 'entry-';

  /// A [JsonStore] database for reading/writing the device storage.
  JsonStore _jsonStore = JsonStore();

  /// Adds a new [Entry] to the [entryList] and to [JsonStore] in JSON format.
  /// If [dateTime] is not provided, it's initialized with [DateTime.now()]
  addEntry(Entry entry) async {
    entry.dateTime ?? DateTime.now();
    entryList.add(entry);
    final String entryKey = '$keyPrefix$entry.dateTime';

    // Write to the device with the JsonStore object
    await _jsonStore.setItem(entryKey, entry.toJson());
  }

  /// Removes the [Entry] provided from both [jsonStore] and [entryList]
  removeEntry(Entry entry) async {
    final String entryKey = '$keyPrefix$entry.dateTime';

    // delete from storage
    await _jsonStore.deleteItem(entryKey);

    // Delete from object list
    entryList.remove(entry);
  }

  /// Loads each [Entry] from the local storage.
  _loadEntries() async {
    List<Map<String, dynamic>> jsonEntries =
        await _jsonStore.getListLike('$keyPrefix%');

    entryList = jsonEntries != null
        ? jsonEntries.map((e) => Entry.fromJson(e)).toList()
        : [];
  }
}
