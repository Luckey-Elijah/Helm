class Entry {
  String title;
  String body;
  DateTime dateTime;

  /// Constructor for the [Entry] class
  Entry({this.title, this.body, this.dateTime});

  /// Named constructor using [DateTime.now();]
  Entry.now({this.title, this.body}) {
    dateTime = DateTime.now();
  }

  /// Reads the JSON encoding from a the [Map<String, dynamic>]
  Entry.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        body = json['body'],
        dateTime = DateTime.parse(json['dateTime']);

  /// Used to writing to JSON by mapping members of [Entry]
  Map<String, dynamic> toJson() => {
        'title': title,
        'body': body,
        'dateTime': dateTime.toString(),
      };
}
