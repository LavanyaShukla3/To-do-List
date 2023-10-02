import 'package:flutter/material.dart';
import  'package:state_management/widgets/list_tiled.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_Data.dart';

class TaskTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<taskData>(
     builder: (context, taskdata, child) {
       return ListView.builder(
         itemBuilder: (context, index) {
           //final task = taskData.tasks[index];
           ListTiled(
             taskTitle: taskdata.tasks[index].name!,
             isChecked: taskdata.tasks[index].isDone,
             checkboxCallBack: (checkState) {
               taskdata.updateTask(taskdata.tasks[index]);
             },
             onLongPressCallback: (){
               taskdata.deleteTask(taskdata.tasks[index]);
             },
           );
         }, itemCount: taskdata.taskCount,
       );
     },
    );
  }
}


