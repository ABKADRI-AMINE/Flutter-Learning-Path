// ignore_for_file: prefer_const_constructors

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: Text(
            "Welcome",
            style: TextStyle(fontSize: 27),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 99, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66))),
                ),
                child: Text(
                  "Log in",
                  style: TextStyle(fontSize: 27),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.purple[100]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 87, vertical: 15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66))),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 27, color: Colors.grey[800]),
                ),
              ),
            ],
          ),
        ));
  }
}
