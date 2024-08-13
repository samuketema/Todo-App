import 'package:flutter/material.dart';
import 'tilelist.dart';
import '../modal/task1.dart';
import '../screens/task.dart';

class TaskLists extends StatefulWidget {
  TaskLists({
    required this.tasks,
  });
  List<Task> tasks;
  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TileList(
          isChecked: widget.tasks[index].isChecked,
          title: widget.tasks[index].name,
          onChanged: (bool? checkBoxState) {
            setState(
              () {
                widget.tasks[index].toggleCheckBox();
              },
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
