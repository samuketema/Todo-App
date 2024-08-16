import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todo/modal/task1.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'First Task'),
    Task(name: 'Second Task'),
    Task(name: "Third Task")
  ];

  int get numberOfTasks {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addNewTask(newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
