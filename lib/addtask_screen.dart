import 'package:flutter/material.dart';
import 'taskdata.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final task = TaskData();

  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          color: Colors.white),
      height: 250,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'New Task',
            style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 25,
                fontWeight: FontWeight.w500),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              textAlign: TextAlign.center,
              controller: myController,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              onPressed: () {
                Navigator.pop(context);
                task.tasks.add(myController.text);
                setState(() {});
                print(task.tasks);
                // print(task.updateList(myController.text));
                // TaskData().tasks.add(myController.text);
                // print(TaskData().tasks);
              },
              child: Container(
                height: 40,
                width: 400,
                color: Colors.lightBlueAccent,
                child: Center(
                    child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ))
        ],
      ),
    );
  }
}
