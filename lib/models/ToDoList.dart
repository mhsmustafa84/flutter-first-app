class ToDoListModel {
  ToDoListModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int userId;
  int id;
  String title;
  bool completed;

  factory ToDoListModel.fromJson(Map<String, dynamic> json) => ToDoListModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
      );
}
