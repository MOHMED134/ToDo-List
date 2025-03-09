import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count =1;
@override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Conter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){

                setState(() {
                  count --;
                });
              },
              child: Text('MINUS'),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('$count',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  count ++;
                  print(count);
                });

              },
              child: Text('PLUS'),),
          ],
        ),
      ),
    );
  }
}
