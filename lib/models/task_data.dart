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
}
