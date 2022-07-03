import 'package:flutter/material.dart';

import '../models/task.dart';
import '../widgets/task_list.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> taskList = [
    Task(title: 'gg'),
    Task(title: 'gg'),
    Task(title: 'gg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.playlist_add_check,
                  color: Colors.white,
                  size: 40,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'My Daily Todoes',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            //Comment
            Text(
              '${taskList.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TaskList(taskList),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled:
                true, //move the shhet on top andthe keyboard down
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: AddTaskScreen((newTaskTitle) {
                  setState(() {
                    taskList.add(Task(title: newTaskTitle));
                    Navigator.pop(context);
                  });
                }),
              ),
            ),
          );
        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
    );
  }
}
