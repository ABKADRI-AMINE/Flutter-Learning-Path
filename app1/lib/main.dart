import 'package:app1/ui/pages/counter.page.dart';
import 'package:app1/ui/pages/gallery.page.dart';
import 'package:app1/ui/pages/home.page.dart';
import 'package:app1/ui/pages/meteo.page.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(new MyApp());
// }
// Si on a une seul ligne de code
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=>HomePage(),
        "/meteo":(context)=>MeteoPage(),
        "/gallery":(context)=>GalleryPage(),
        "/counter":(context)=>CounterPage(),
      },
      theme:ThemeData(primarySwatch: Colors.deepOrange
    ),
      initialRoute: "/",
    );
  }
}