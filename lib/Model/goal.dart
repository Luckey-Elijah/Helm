class Goal {
  String name;
  String description;
  bool completed;
  String category;

  Goal(
    this.name,
    this.description,
    this.completed,
    this.category,
  );

  Goal.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        description = json['description'],
        completed = json['completed'],
        category = json['category'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'description': description,
        'completed': completed,
        'category': category,
      };
}
