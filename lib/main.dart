import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/screen/TasksScreen.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_Data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext Context) {
    return ChangeNotifierProvider(
      create: (context) => taskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
