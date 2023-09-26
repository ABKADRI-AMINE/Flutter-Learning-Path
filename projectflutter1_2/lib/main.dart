import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  List verse = [
    {
      "line1": "Amiiigoooo Cantareee Presenteee",
      "line2": "Wydaaadyyyy OHOOOOO OhooooO",
    },
    {
      "line1": "fidaaaaa2iiii ohoooooo ohooooooo",
      "line2": "Raaassiiiiiii Aaaaaliiiiiiiii",
    },
    {
      "line1": "w hnya wlad lhamra manhadrosh ndero",
      "line2": "o partous ou on va on est chez nous",
    }
  ];
  int index = 0;
  changeIndex(String direction) {
    if (direction == "right") {
      setState(() {
        if (index == verse.length - 1) {
          index = 0;
        } else {
          index++;
        }
      });
    } else if (direction == "left") {
      setState(() {
        if (index == 0) {
          index = verse.length - 1;
        } else {
          index--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[index]["line1"],
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[index]["line2"],
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("left");
                  },
                  backgroundColor: Color.fromARGB(255, 255, 0, 0),
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                FloatingActionButton(
                  onPressed: () {
                    changeIndex("right");
                  },
                  backgroundColor: Color.fromARGB(255, 255, 0, 0),
                  child: Icon(
                    Icons.arrow_right,
                    size: 60,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
