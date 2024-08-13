import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/listview.dart';
import '../widgets/tilelist.dart';
import 'addtaskScreen.dart';
import '../modal/task1.dart';



 void addNewTask(){
  
 }
class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: "Third Task")
  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTask(onPressed: (newTaskText){
            setState(() {
              tasks.add(Task(name: '$newTaskText'));
            });
            Navigator.pop(context);
           
          },));
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
                '12 Tasks',
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
            child: TaskLists(tasks: tasks),
          ),
        )
      ]),
    );
  }
}