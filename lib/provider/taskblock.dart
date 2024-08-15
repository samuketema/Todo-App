import 'package:flutter/foundation.dart';
import 'package:todo/modal/task1.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: "Third Task")
  ];

  int get numberOfTasks{
    return tasks.length;
  }
  
  void addNewTask(newTask){
    tasks.add(Task(name: newTask));
    notifyListeners();
  }
}