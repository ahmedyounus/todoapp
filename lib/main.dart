import 'package:flutter/material.dart';
import 'package:todo/todoscreen.dart';

void main() {
  runApp(ToDoApp());
}
class ToDoApp extends StatelessWidget {
  const ToDoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: ToDoScr() ,)
      ,);
  }
}
