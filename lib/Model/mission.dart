import 'goal.dart';

class Mission {
  String name;
  List<Goal> goals;
  String description;
  String status;
  List<String> categories;

  Mission(this.name, this.description, this.status);

  Mission.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        goals = json['goals'],
        description = json['description'],
        status = json['status'],
        categories = json['categories'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'goals': goals.toString(),
        'description': description,
        'status': status,
        'categories': categories,
      };
}
