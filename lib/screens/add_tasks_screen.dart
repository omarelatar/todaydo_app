// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/tasks_data.dart';

class AddTasksScreen extends StatelessWidget {
   Function addTaskCallback ;

  AddTasksScreen(this.addTaskCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Padding(
      padding:  const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          children: [
            const SizedBox(height: 15,),
            const Text('Add Task' , style: TextStyle(
              fontSize: 20,
              color: Colors.indigo,
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: TextField(
                onChanged: (newText){
                  newTaskTitle = newText;
                },
                autofocus: true,
              ),
            ),
            const SizedBox(height: 40,),
            Container(

              height:40 ,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: ElevatedButton(onPressed: (){
                  Provider.of<TaskData>(context , listen: false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                  },
                    child: const Text('Add'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),),
                )),
          ],
        ),
      ),
    );
  }
}
