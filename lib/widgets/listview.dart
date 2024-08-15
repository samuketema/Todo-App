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
          final currentTask = taskData.tasks[index];
          return TileList(
            onLongPress:(){taskData.removeTask(currentTask);} ,
            isChecked: currentTask.isChecked,
            title: currentTask.name,
            onChanged: (bool? checkBoxState) {
              taskData.updateTask(currentTask);
            },
          );
        },
        itemCount: taskData.numberOfTasks,
      );
      },
    );
  }
}
