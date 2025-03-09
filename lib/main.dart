import 'package:flutter/material.dart';
import 'package:flutter_abdallah/layout/home_layout.dart';
import 'package:flutter_abdallah/modules/bmi/BMICalculator.dart';
import 'package:flutter_abdallah/modules/counter/CounterScreen.dart';
import 'package:flutter_abdallah/modules/login/Login_Screen.dart';
import 'package:flutter_abdallah/modules/messenger/Messenger_Screen.dart';
import 'package:flutter_abdallah/modules/users/UsersScreen.dart';
import 'package:flutter_abdallah/modules/bmi_result/bmiResult.dart';
//import 'Login_Screen.dart';

void main(){
  runApp(
    MyApp(),
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(),
    );
  }
}