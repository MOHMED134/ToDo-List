import 'package:flutter/material.dart';

class new_tasks_screen extends StatelessWidget {
  const new_tasks_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('New Tasks',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),),
    );
  }
}
