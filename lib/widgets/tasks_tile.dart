import 'package:flutter/material.dart';


class TasksTile extends StatelessWidget {
  final bool isChecked ;
  final String taskTitle ;
  final void Function(bool?) checkboxChange;
  final void Function() listTileDelete;

    const TasksTile({super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(taskTitle ,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough :null
      ),),
      trailing:Checkbox(
    activeColor: Colors.teal.shade400,
    value:isChecked,
     onChanged: checkboxChange,
      ),
      onLongPress:listTileDelete ,
    );

  }
}



