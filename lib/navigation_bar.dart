import 'package:flutter/material.dart';
import 'package:solo_leveling/features/home/view/home_page.dart';
import 'package:solo_leveling/features/profile/view/profile_page.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int index = 0;
  final pages = [
    const HomePage(),
    const ProfilePage(),
  ];
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromRGBO(64, 93, 124, 1),
        height: 60,
        labelBehavior: labelBehavior,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.task_alt_outlined),
            label: 'Задачи',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_pin),
            label: 'Игрок',
          ),
        ],
      ),
    );
  }
}
