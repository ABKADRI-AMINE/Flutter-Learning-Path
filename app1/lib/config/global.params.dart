import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>> menus=[
    {
      "title":"Counter","icon":Icon(Icons.home,color: Colors.orange,),"route":"/counter"
    },
    {
      "title":"Meteo","icon":Icon(Icons.camera,color: Colors.orange,),"route":"/meteo"
    },
    {
      "title":"Gallery","icon":Icon(Icons.map,color: Colors.orange,),"route":"/gallery "
    },
  ];
}