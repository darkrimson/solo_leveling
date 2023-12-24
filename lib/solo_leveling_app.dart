import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solo_leveling/provider/task_provider.dart';
import 'package:solo_leveling/theme/theme.dart';

import 'navigation_bar.dart';

class SoloLevelingApp extends StatelessWidget {
  const SoloLevelingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Поднятие уровня в одиночку',
        theme: appTheme,
        home: const NavigationBarWidget(),
      ),
    );
  }
}
