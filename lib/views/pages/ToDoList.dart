import 'package:day2/models/ToDoList.dart';
import 'package:day2/services/ToDoListService.dart';
import 'package:day2/views/widgets/ToDoListCard.dart';
import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool loading = true;
  List<ToDoListModel> toDoList = [];

  getData() async {
    toDoList = await ToDoListService().getToDoLists();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do List"),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(
              backgroundColor: Colors.blue,
            ))
          : ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (BuildContext context, int index) {
                return ToDoListCard(
                  title: toDoList[index].title,
                  completed: toDoList[index].completed,
                );
              },
            ),
    );
  }
}
