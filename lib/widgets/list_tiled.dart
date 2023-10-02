import 'package:flutter/material.dart';
import 'dart:async';

import 'package:state_management/widgets/task_tile.dart';
class ListTiled extends StatelessWidget{


  final bool? isChecked;
  String taskTitle;
  final ValueChanged<bool?> checkboxCallBack;
  final VoidCallback onLongPressCallback;

  ListTiled({this.isChecked, this.taskTitle = '', required this.checkboxCallBack, required this.onLongPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(taskTitle, style: TextStyle(
          decoration: isChecked == true ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
    ),
    );
  }
  }

