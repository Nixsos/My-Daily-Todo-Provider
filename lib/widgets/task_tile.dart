import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChacked;
  final Function(bool?) changeStateFun;
  //final bool? isChacked;

  const TaskTile({
    Key? key,
    required this.isChacked,
    required this.changeStateFun,
    required this.taskTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle),
      trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChacked,
          onChanged: changeStateFun),
    );
  }
}



// class TaskCheckBox extends StatelessWidget {
//   final bool? isChacked;
//   final Function(bool?) changeStateFun;

//   TaskCheckBox(
//     this.isChacked,
//     this.changeStateFun,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.teal[400],
//         value: isChacked,
//         onChanged: changeStateFun);
//   }
// }
