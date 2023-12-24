import 'package:flutter/material.dart';

final appTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromRGBO(64, 93, 124, 1),
  fontFamily: 'BOWLER',
  dividerColor: const Color.fromRGBO(0, 191, 255, 1),
);

const textHeader =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w100);

const textTasks = TextStyle(
    color: Color.fromARGB(255, 7, 255, 15),
    fontSize: 28,
    fontWeight: FontWeight.w100);

const textWarn =
    TextStyle(color: Colors.red, fontSize: 25, fontWeight: FontWeight.w100);

const textWarnDesc =
    TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w100);
