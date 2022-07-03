import 'package:flutter/cupertino.dart';

import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(title: 'go shopping'),
    Task(title: 'study figma'),
    Task(title: 'play lol'),
  ];

  void addTaskToList(String newTaskTitle) {
    taskList.add(Task(title: newTaskTitle));
    notifyListeners();
  }

  void doneChangeCall(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    taskList.remove(task);
    notifyListeners();
  }
}
