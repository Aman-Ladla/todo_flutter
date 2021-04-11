import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function callback;
  final Function callback1;

  TaskTile({this.isChecked, this.title, this.callback, this.callback1});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: callback1,
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: callback,
      ),
    );
  }
}
