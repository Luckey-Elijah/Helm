class Entry {
  // String _id;
  String title;
  String body;
  DateTime dateTime;

  // Constructor for the Entry class
  Entry({this.title, this.body, this.dateTime});

  // named constructor for today's date
  Entry.now({this.title, this.body}) {
    dateTime = DateTime.now();
  }

  // JSON Serialation //

  // Reads the JSON encoding in the local storage
  Entry.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        body = json['body'],
        dateTime = DateTime.parse(json['dateTime']);

  /// Used to writing to JSON
  Map<String, dynamic> toJson() => {
        'title': title,
        'body': body,

        // "Writing to" is left in String format not DateTime
        'dateTime': dateTime,
      };

  // File I/O //

  // Write JSON to device
  writeToDevice(Entry entry) {}

  // Read JSON from device
  Future<Entry> readFromDevice({DateTime dateTime}) async {
    // access storage

    // match dateTime to dateTime of the JSON

    // intialize the value pairs key-value pairs as String?

    // Map it to this vairable
    Map<String, dynamic> jsonMap = {};

    Entry entry = Entry.fromJson(jsonMap);

    return entry;
  }
}
