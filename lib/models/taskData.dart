import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Sample Task', isDone: false),
  ];

  //This is unmodifiable list(not listview)
  UnmodifiableListView<Task> get unmodifiedTasks {
    return UnmodifiableListView(_tasks);
  }

  int get getCount {
    return _tasks.length;
  }

  void addTask(String text) {
    final task = Task(name: text, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Task task) {
    task.toggle();
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
