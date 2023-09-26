// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FacebookApp(),
    );
  }
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 20,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 27,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.blueAccent,
              size: 30,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.blueAccent,
                size: 30,
              ),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.blueAccent,
              icon: Icon(
                Icons.message,
                color: Colors.blueAccent,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 22),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey,
                ),
                height: 322,
                width: double.infinity,
                child: Text(
                  "Amine",
                  style: TextStyle(color: Colors.white, fontSize: 44),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                      ),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Amine",
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                      ),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Amine",
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                      ),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Amine",
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 23),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blueGrey,
                      ),
                      height: 100,
                      width: 150,
                      child: Text(
                        "Amine",
                        style: TextStyle(color: Colors.white, fontSize: 27),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey,
                ),
                height: 322,
                width: double.infinity,
                child: Text(
                  "Amine",
                  style: TextStyle(color: Colors.white, fontSize: 44),
                ),
              ),
            ],
          ),
        ));
  }
}
