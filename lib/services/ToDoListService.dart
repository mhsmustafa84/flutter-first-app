import 'package:day2/models/ToDoList.dart';
import 'package:dio/dio.dart';

class ToDoListService {
  String url = "https://jsonplaceholder.typicode.com/todos";
  Future<List<ToDoListModel>> getToDoLists() async {
    List<ToDoListModel> toDoList = [];
    try {
      var response = await Dio().get(url);
      var data = response.data;
      data.forEach((value) {
        toDoList.add(ToDoListModel.fromJson(value));
      });
    } catch (e) {
      print(e);
    }
    return toDoList;
  }
}
