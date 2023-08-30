import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/screens/tasks_screen.dart';
import 'package:todaydo_app/models/tasks_data.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> TaskData() ,
      child: const MaterialApp(
        debugShowCheckedModeBanner: false ,
        home: TasksScreen(),
      ),
    );
  }
}