import 'package:flutter/material.dart';
import 'package:todo/provider/taskblock.dart';
import 'tilelist.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

   
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          return TileList(
            isChecked: taskData.tasks[index].isChecked,
            title: taskData.tasks[index].name,
            onChanged: (bool? checkBoxState) {
              taskData.updateTask(taskData.tasks[index]);
            },
          );
        },
        itemCount: taskData.numberOfTasks,
      );
      },
    );
  }
}
