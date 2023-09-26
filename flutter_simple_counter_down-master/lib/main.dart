// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterDownApp(),
    );
  }
}

class CounterDownApp extends StatefulWidget {
  const CounterDownApp({Key? key}) : super(key: key);

  @override
  State<CounterDownApp> createState() => _CounterDownAppState();
}

class _CounterDownAppState extends State<CounterDownApp> {
  Timer? repeatedFunction;
  Duration duration =
      Duration(seconds: 0); //pour initialiser les secondes par 0//
  startTimer() {
    repeatedFunction = Timer.periodic(Duration(seconds: 1), (qqqqqq) {
      setState(() {
        int newSeconds = duration.inSeconds + 1;
        duration = Duration(seconds: newSeconds);
      });
    });
  }

  bool isRunning = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 40, 43),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inHours.toString().padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "Hours",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inMinutes
                          .remainder(
                              60) //remainder(60) bash fash ywsl l 60 ydoz l heur mayktbsh 61//
                          .toString()
                          .padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "Minutes",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 22),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                    child: Text(
                      duration.inSeconds
                          .remainder(60)
                          .toString()
                          .padLeft(2, "0"),
                      style: TextStyle(
                        fontSize: 77,
                      ),
                    ),
                  ),
                  Text(
                    "Seconds",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 55,
          ),
          isRunning
              ? //if conditionel eya kan is running true dkhel l Row sinon dkhel l elevatedbutton w 7na 3dna bli isRunning false donc aydkhl l elevatedbutton tae start timer//
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (repeatedFunction!.isActive) {
                          setState(() {
                            repeatedFunction!.cancel();
                          });
                          
                        } else {
                          startTimer();
                        }
                      },
                      child: Text(
                        (repeatedFunction!.isActive) ? "Stop" : "Resume",
                        style: TextStyle(fontSize: 22),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 197, 25, 97)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        repeatedFunction!
                            .cancel(); //fash nwrk ela cancel gha yder repeatedFunction!.cancel() bsh yw9f chrono w had ! kanderoha bsh nrecuperew variable global f flutter mn b3d gha ymshi yktn lia f duration 0 gha yrj3ha zero mn b3d gha twli isRunning false bsh y2afficher lia start timer//
                        setState(() {
                          duration = Duration(seconds: 0);
                          isRunning = false;
                        });
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(fontSize: 19),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 197, 25, 97)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(9))),
                      ),
                    ),
                  ],
                )
              : ElevatedButton(
                  onPressed: () {
                    startTimer();
                    setState(() {
                      isRunning = true;
                    });
                  },
                  child: Text(
                    "Start Timer",
                    style: TextStyle(fontSize: 23),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 25, 120, 197)),
                    padding: MaterialStateProperty.all(EdgeInsets.all(14)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
                  ),
                )
        ],
      ),
    );
  }
}
