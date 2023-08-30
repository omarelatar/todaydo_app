import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_model.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [];
  // method لاضافه مهام جديده
  void addTask(String newTaskTitle){
    tasks.add(Task(name: newTaskTitle));
 // لمشاركه ال method في كل التطبيق
    notifyListeners();
  }
  void updateTask(Task task){
    task.doneChange();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}