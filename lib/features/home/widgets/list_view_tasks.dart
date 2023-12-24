import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solo_leveling/features/home/widgets/list_tile.dart';
import 'package:solo_leveling/provider/task_provider.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: taskProvider.tasks.length,
        itemBuilder: ((context, index) {
          final task = taskProvider.tasks[index];
          return ListTileWidget(
            task: task,
            index: index,
          );
        }),
      ),
    );
  }
}
