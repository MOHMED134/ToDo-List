import 'package:flutter/material.dart';

class done_tasks_screen extends StatelessWidget {
  const done_tasks_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Done Tasks',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),),
    );
  }
}
