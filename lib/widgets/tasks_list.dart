import 'package:flutter/material.dart';
import 'package:todo_list/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';

class TasksLists extends StatelessWidget {
  const TasksLists({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData,child){
        return  ListView.builder(
          itemBuilder: (context,index) {
            final task = taskData.tasks[index];
          return TaskTile(
             isChecked: task.isDone,
             taskTitle: task.name,
              checkboxCallback: (bool? checkboxState){
              taskData.updateTask(task);
            },
            longPressCallback: () {
                  taskData.deleteTask(task);
              },
            );
          },
        itemCount:taskData.taskCount,
        );
      },

    );
        
    
  }
}