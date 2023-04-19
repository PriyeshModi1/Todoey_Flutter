import 'package:flutter/material.dart';
// import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String newTasksTitle = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              textAlign: TextAlign.center,
              "Add Task",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (newText) {
                newTasksTitle = newText;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: const Size.fromHeight(50.0),
                backgroundColor: Colors.lightBlueAccent,
                elevation: 5,
              ),
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTasksTitle);
                Navigator.pop(context);
              },
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}