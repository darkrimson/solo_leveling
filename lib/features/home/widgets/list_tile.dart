import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solo_leveling/model/task.dart';
import 'package:solo_leveling/provider/task_provider.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
    required this.task,
    required this.index,
  });

  final Task task;
  final int index;

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return ListTile(
      title: Text(
        task.text,
        style: TextStyle(
          color: task.isCompleted ? Colors.grey : Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w100,
          decoration: task.isCompleted
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      trailing: Text(
        task.isCompleted
            ? '[${task.number}/${task.number}]'
            : '[0/${task.number}]',
        style: TextStyle(
          color: task.isCompleted ? Colors.green : Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w100,
        ),
      ),
      onTap: () {
        taskProvider.toggleTaskCompletion(index);
      },
      onLongPress: () => showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color.fromRGBO(64, 93, 124, 1),
            title: const Text(
              'Удалить задачу?',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
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
                        'Удалить',
                        style: TextStyle(color: Colors.red),
                      ),
                      onPressed: () {
                        taskProvider.deleteTask(index);
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
