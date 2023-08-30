import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/tasks_data.dart';
import 'package:todaydo_app/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TasksTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle:taskData.tasks[index].name,
              checkboxChange: (newValue) {
              taskData.updateTask(taskData.tasks[index]);
              },
                  listTileDelete: (){
                taskData.deleteTask(taskData.tasks[index]);
                  },
            );
          },
        );
      },
    );
  }
}
