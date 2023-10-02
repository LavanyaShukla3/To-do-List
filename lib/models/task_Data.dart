import 'package:flutter/material.dart';
import 'package:state_management/models/task.dart';

class taskData extends ChangeNotifier{
  List<Task> tasks=[
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
  ];
  int get taskCount{
    return tasks.length;
    }
    void addTask(String? newTaskTitle){
    final task = Task(name: newTaskTitle);
        tasks.add(task);
      notifyListeners();
    }
    void updateTask(Task task){
      task.toggle();
      notifyListeners();
    }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
