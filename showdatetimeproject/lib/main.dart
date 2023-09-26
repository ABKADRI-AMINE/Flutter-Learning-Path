// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import "dart:async";
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DateApp(),
    );
  }
}

class DateApp extends StatefulWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  State<DateApp> createState() => _DateAppState();
}

class _DateAppState extends State<DateApp> {
  String Weekday = "";
  String date = "";
  String timeNow = "";

  changeEverySec() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
         Weekday = DateFormat.EEEE().format(DateTime.now());
         date = DateFormat.yMMMMd().format(DateTime.now());
         timeNow = DateFormat('hh : mm : ss a' ).format(DateTime.now());
      });
    });
  }

  void initState() {
    super.initState();
    changeEverySec();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Time & Date App",
          style: TextStyle(
            fontSize: 27,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 57, 73, 80),
      ),
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Today's Day is $Weekday!",
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              date,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              timeNow,
              style: TextStyle(fontSize: 27, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
