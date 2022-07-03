import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemCount: taskData.taskList.length,
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.taskList[index].title,
              isChacked: taskData.taskList[index].isDone,
              checkBoxChange: (bool? newValue) {
                taskData.doneChangeCall(taskData.taskList[index]);
              },
              longPressCallBack: () {
                taskData.deleteTask(taskData.taskList[index]);
              },
            );
          },
        );
      },
    );
  }
}
