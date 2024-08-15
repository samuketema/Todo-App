import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/provider/taskblock.dart';
import '../widgets/listview.dart';
import 'package:provider/provider.dart';
import 'addtaskScreen.dart';

void addNewTask() {}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTask(
                    onPressed: (newTaskText) {
                      Provider.of<TaskData>(context, listen: false).addNewTask(newTaskText);
                      Navigator.pop(context);
                    },
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.only(top: 60, left: 40, bottom: 50, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    size: 30,
                    color: Colors.lightBlueAccent,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '${Provider.of<TaskData>(context).numberOfTasks} tasks',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: TaskLists(),
          ),
        )
      ]),
    );
  }
}
