import 'package:flutter/material.dart';
import 'package:to_do/models/taskData.dart';
import 'package:to_do/widgets/tiles.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
        builder: (BuildContext context, value, Widget child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            title: value.unmodifiedTasks[index].name,
            isChecked: value.unmodifiedTasks[index].isDone,
            callback: (state) {
              value.updateTasks(value.unmodifiedTasks[index]);
            },
            callback1: () {
              value.removeTask(index);
            },
          );
        },
        itemCount: value.getCount,
      );
    });
  }
}
