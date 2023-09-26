import 'package:flutter/material.dart';
class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter'),),
      body: Center(
        child: Text('Counter Value => ${counter}',
        style: TextStyle(fontSize: 22,color: Colors.deepOrange),
      ),
      ),
     floatingActionButton: Row(
       mainAxisAlignment: MainAxisAlignment.end,
       children: [
         FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: () {
             setState(() {/*change l etat et rexecute la method build et change le state*/
               ++counter;
             });
             print(counter);
           },

         ),
         SizedBox(width: 8,),
         FloatingActionButton(
           child: Icon(Icons.remove),
           onPressed: () {
             setState(() {/*change l etat et rexecute la method build et change le state*/
               --counter;
             });
             print(counter);
           },

         ),

       ],
     )
      );
  }
}
