import 'package:flutter/material.dart';
import 'package:todo/provider/taskblock.dart';
import 'tilelist.dart';
import '../modal/task1.dart';
import '../screens/task.dart';
import 'package:provider/provider.dart';

class TaskLists extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Task> tasks =  Provider.of<TaskData>(context).tasks;
    return ListView.builder(
      itemBuilder: (context, index) {
        return TileList(
          isChecked: tasks[index].isChecked,
          title: tasks[index].name,
          onChanged: (bool? checkBoxState) {
            // setState(
            //   () {
            //     tasks[index].toggleCheckBox();
            //   },
            // );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
