import 'package:flutter/material.dart';
import 'listtile_file.dart';
import 'taskdata.dart';

class MyTasks extends StatelessWidget {
  const MyTasks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final task = TaskData().tasks;
    return ListView.builder(
        itemCount: task.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTiles(
            value: true,
            taskname: task[index],
          );
        });
  }
}
