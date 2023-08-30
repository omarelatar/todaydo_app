import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/screens/add_tasks_screen.dart';
import 'package:todaydo_app/widgets/tasks_list.dart';
import 'package:todaydo_app/models/tasks_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            isScrollControlled: true,

            context: context,
              builder:
                  (context)=>SingleChildScrollView(
                      child:
                  Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child:  AddTasksScreen((newTaskTitle){

                      }),
                  ),
                  ),
          );
        },
        backgroundColor: Colors.indigo.shade400,
        child: const Icon(Icons.add , size: 20,),
      ),
      backgroundColor: Colors.teal.shade400,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 25 , top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(
            height: 40,
          ),
            const Row(
              children: [

                Icon(Icons.playlist_add_check , color: Colors.white, size: 30,),
                SizedBox(width: 15,),
                Text('ToDayDo' , style: TextStyle(
                  fontWeight: FontWeight.bold,
                      fontSize: 30,
                  color: Colors.white
                ),),

              ],
            ),
            const SizedBox(height: 20,),
            Text('${Provider.of<TaskData>(context).tasks.length} Tasks' ,
              style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const TasksList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
