import 'package:amazon_ap/pages/MyApp.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,
    routes: {
      MyApp.id:(ctx)=>MyApp(),



    },),);
}

