
import 'package:flutter/material.dart';



class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;
  const TaskTile({super.key, required this.isChecked,required this.taskTitle, required this.checkboxCallback, required this.longPressCallback });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // onLongPress:longPressCallback ,
      leading:  IconButton(
          onPressed: longPressCallback,
          icon: const  Icon(Icons.delete),
          color: Colors.red,
      ),
      title:  Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
         activeColor: Colors.lightBlueAccent,
         value: isChecked,
         onChanged:checkboxCallback,
      ),

    );
   }
 }



//

