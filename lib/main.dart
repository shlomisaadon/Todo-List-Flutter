// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:todo_list/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/screens/upload_img.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: TasksScreen.id,
          routes: {
            TasksScreen.id: (context) => const TasksScreen(),
            UploadImg.id: (context) => UploadImg(),
          }),
    );
  }
}
