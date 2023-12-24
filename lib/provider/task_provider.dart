import 'package:flutter/foundation.dart';

import '../model/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [
    Task('Отжимания', false, '100'),
    Task('Пресс', false, '100'),
    Task('Приседания', false, '100'),
  ];

  void toggleTaskCompletion(int index) {
    tasks[index].toggleCompleted();
    notifyListeners();
  }

  void addTask(String text, String number) {
    final newTask = Task(text, false, number);
    tasks.add(newTask);
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
