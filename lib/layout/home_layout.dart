import 'package:flutter/material.dart';
import 'package:flutter_abdallah/modules/archive_tasks/archive_tasks_screen.dart';
import 'package:flutter_abdallah/modules/done_tasks/done_tasks_screen.dart';
import 'package:flutter_abdallah/modules/new_tasks/new_tasks_screen.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common/sqlite_api.dart';

class HomeLayout extends StatefulWidget {
  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    new_tasks_screen(),
    done_tasks_screen(),
    Archive_tasks_screen(),
  ];

  List<String> titles = [
    'New Tasks',
    'Done Tasks',
    'Archive Tasks',
  ];
  Database? database;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShow = false;
  IconData fabIcon = Icons.edit;
  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(isBottomSheetShow){
            Navigator.pop(context);
            isBottomSheetShow = false;
            setState(() {
              fabIcon = Icons.edit;
            });

          }else {
            scaffoldKey.currentState?.showBottomSheet((context) =>
                Container(
                  width: double.infinity,
                  height: 120.0,
                  color: Colors.red,
                ),

            );
            isBottomSheetShow = true;
            setState(() {
              fabIcon= Icons.add;
            });

          }
        },
        child: Icon(fabIcon),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done'),
          BottomNavigationBarItem(icon: Icon(Icons.archive), label: 'Archived'),
        ],
      ),
    );
  }

  Future<String> getName() async {
    return 'Mohamed';
  }

  void createDatabase() async {
    database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('the database is created');
        database
            .execute(
                'CREATE TABLE tasks (id INTEGER PRIMARY KEY , title TEXT , date TEXT , time TEXT , status TEXT)')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('error when creating table ${error.toString()}');
        });
      },
      onOpen: (database) {
        print('the database is opened');
      },
    );
  }

  void insertDatabase() async {
    await database?.transaction((txn)
    async {
      int id1 = await txn.rawInsert(
          'INSERT INTO tasks(title,date,time,status) VALUES("some name", "1234", "456.789","new")');
      print('inserted1: $id1');
      int id2 = await txn.rawInsert('INSERT INTO tasks(title,date,time,status) VALUES ("first task","02222","891","new")');
      print('inserted2: $id2');
    });
  }

  // void insertToDatabase()  {
  //    var transiction = database?.transaction((txn) {
  //     txn
  //         .rawInsert(
  //             'INSERT INTO tasks(title,date,time,status) VALUES ("first task","02222","891","new")')
  //         .then((value) {
  //       print('$value inserted successfuly');
  //     }).catchError((error) {
  //       print('error in insert table ${error.toString()}');
  //     });
  //     return null;
  //   });
  // }
}
