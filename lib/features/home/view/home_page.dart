import 'package:flutter/material.dart';
import 'package:solo_leveling/theme/theme.dart';

import '../widgets/add_task_button.dart';
import '../widgets/list_view_tasks.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.warning_amber,
                    size: 35,
                    color: Colors.red,
                  ),
                  Text(
                    'УКАЗАНИЕ ПО ЗАДАНИЮ',
                    style: textHeader,
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 30),
              Text(
                'ЕЖЕДНЕВНОЕ ЗАДАНИЕ - СТАТЬ СИЛЬНЕЕ',
                style: textHeader,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 25),
              Text(
                'Цели',
                style: textTasks,
              ),
              //ListView задач
              ListViewWidget(),
              SizedBox(height: 20),
              Divider(),
              //Кнопка добавления задач
              AddTaskButton(),
              Divider(),
              SizedBox(height: 20),
              Text('ПРЕДУПРЕЖДЕНИЕ!', style: textWarn),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'ЕСЛИ ЗАДАНИЕ НЕ БУДЕТ ВЫПОЛНЕНО В УСТАНОВЛЕННЫЙ ВРЕМЕННОЙ ПРОМЕЖУТОК, ТО БУДЕТ НАЛОЖЕН СООТВЕТСТВУЮЩИЙ ШТРАФ',
                  style: textWarnDesc,
                ),
              ),
              SizedBox(height: 5),
              Icon(
                Icons.watch_later_rounded,
                size: 65,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
