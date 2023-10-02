import 'package:flutter/material.dart';
import  'package:state_management/widgets/list_tiled.dart';
import  'package:state_management/widgets/task_tile.dart';
import  'package:state_management/screen/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task_Data.dart';

class TasksScreen extends StatelessWidget{
  @override
  Widget build(BuildContext Context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed:(){
          showModalBottomSheet(context: Context, builder: (Context) => Taskscreen(),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 60.0, top: 30.0, bottom: 60.0, right:60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                  child: Icon(Icons.list, size: 30.0,color: Colors.lightBlueAccent,),
                backgroundColor: Colors.white,
                radius: 30.0,
              ),
              SizedBox(height:30.0),
              Text('ToDo List',
              style:TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),
              ),
                Text('taskData Tasks',
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),

            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: TaskTile(),
            ),
          ),
    ]
      ),
    );
  }
}

