import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  Widget buildUserItem() => Row(
    children: [
      CircleAvatar(
        radius: 25,
        child: Text(
          '1',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [

          Text('Mohamed Abdullah',style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),),
          Text('+201060772456',style: TextStyle(
            color: Colors.grey,
          ),),
        ],
      ),
    ],
  );
}
