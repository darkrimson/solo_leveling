import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solo_leveling/provider/task_provider.dart';

class AddTaskButton extends StatelessWidget {
  const AddTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final TextEditingController taskTextController =
                TextEditingController();
            final TextEditingController taskNumberController =
                TextEditingController();
            return AlertDialog(
              backgroundColor: const Color.fromRGBO(64, 93, 124, 1),
              title: const Text(
                'Добавить задачу?',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: taskTextController,
                    decoration: const InputDecoration(
                      labelText: 'Название задачи',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: taskNumberController,
                    decoration: const InputDecoration(
                      labelText: 'Количество повторений',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(0, 191, 255, 1),
                        ),
                      ),
                      child: TextButton(
                        child: const Text('Отмена'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(0, 191, 255, 1),
                        ),
                      ),
                      child: TextButton(
                        child: const Text(
                          'Добавить',
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () {
                          final taskText = taskTextController.text;
                          final taskNumber = taskNumberController.text;
                          if (taskText.isNotEmpty) {
                            Provider.of<TaskProvider>(context, listen: false)
                                .addTask(taskText, taskNumber);
                            Navigator.of(context).pop();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        );
      },
      child: const Text(
        'Добавь задачу',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
