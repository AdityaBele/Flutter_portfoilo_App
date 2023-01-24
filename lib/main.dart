
import 'package:flutter/material.dart';
import 'package:portfoilo/about.dart';
import 'package:portfoilo/home.dart';
import 'package:portfoilo/project.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "soho"
    ),
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home': (context)=> MyHome(),
      'about': (context)=>MyAbout(),
      'project': (context)=>MyProject()
    },
  ));
}

