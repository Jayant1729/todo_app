import 'package:flutter/material.dart';

class ListTiles extends StatelessWidget {
  final bool value;
  final String taskname;
  ListTiles({required this.value, required this.taskname});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskname,
          style:
              TextStyle(decoration: value ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: value,
        onChanged: (bool) {
          // setState(() {
          //   value = bool!;
          // });
        },
      ),
    );
  }
}
