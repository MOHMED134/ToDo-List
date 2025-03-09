import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';



class UsersScreen extends StatelessWidget {
  List <UserModel> users =[
    UserModel('Omar Abdullah', '+201552683845', 1),
    UserModel('mariem Abdullah', '+201030774874', 2),
    UserModel('mohamed Abdullah', '+201060772456', 3),
    UserModel('nada Abdullah', '+201215483845', 4),
    UserModel('hassan Abdullah', '+201153514687', 5),
    UserModel('Abdullah Mohamed', '+201060772456', 6),
    UserModel('Omar Abdullah', '+201552683845', 1),
    UserModel('mariem Abdullah', '+201030774874', 2),
    UserModel('mohamed Abdullah', '+201060772456', 3),
    UserModel('nada Abdullah', '+201215483845', 4),
    UserModel('hassan Abdullah', '+201153514687', 5),
    UserModel('Abdullah Mohamed', '+201060772456', 6),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
         separatorBuilder: (context, index) =>
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
            height: 1.0,
            color: Colors.grey[300],
            width: double.infinity,
                   ),
          ),
          itemCount: users.length)
      ),
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            '${user.id}',
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
    
            Text('${user.name}',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            Text('${user.phone}',style: TextStyle(
              color: Colors.grey,
            ),),
          ],
        ),
      ],
    ),
  );
}
