import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/models/task.dart';
import 'package:state_management/models/task_Data.dart';

class Taskscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),topLeft: Radius.circular(20.0)),
        ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              Text(
                'Add task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (text){
                  newTaskTitle=text;
                },
              ),
              SizedBox(height: 40.0,),

              FloatingActionButton(
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.zero
                ),
                backgroundColor: Colors.lightBlueAccent,
                child:  Text('add',style: TextStyle(color: Colors.white),),
                  onPressed:(){
                    Provider.of<taskData>(context, listen: false).addTask(newTaskTitle);
                    Navigator.pop(context);
                  },
              ),
            ]
          ),


      ),
    );
  }
}
