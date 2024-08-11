import 'package:flutter/material.dart';
import 'tilelist.dart';
import '../modal/task1.dart';

class TaskLists extends StatefulWidget {
  const TaskLists({super.key});

  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  List<Task> tasks = [Task(name: 'First Task'),
  Task(name: 'Second Task'),Task(name: "Third Task")];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TileList(
          isChecked: tasks[index].isChecked,
          title: tasks[index].name,
          onChanged: (bool? checkBoxState) {
            setState(
              () {
                tasks[index].toggleCheckBox();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
