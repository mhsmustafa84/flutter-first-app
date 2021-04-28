import 'package:day2/views/pages/ToDoListDetails.dart';
import 'package:flutter/material.dart';

class ToDoListCard extends StatefulWidget {
  final String title;
  final bool completed;
  ToDoListCard({this.title, this.completed});
  @override
  _ToDoListCardState createState() => _ToDoListCardState();
}

class _ToDoListCardState extends State<ToDoListCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ToDoListDetails(
                  title: widget.title, completed: widget.completed),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Title: " + widget.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Text(
                        "IsCompleted: " +
                            widget.completed.toString().toUpperCase(),
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
