import 'package:flutter/material.dart';

class ToDoListDetails extends StatefulWidget {
  final String title;
  final bool completed;
  ToDoListDetails({this.title, this.completed});

  @override
  _ToDoListDetailsState createState() => _ToDoListDetailsState();
}

class _ToDoListDetailsState extends State<ToDoListDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To-Do List Details"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(widget.completed.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
