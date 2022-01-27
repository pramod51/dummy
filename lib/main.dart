import 'package:demo_app/pagers/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Let\'s Meet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: NavAppBar()),
    );
  }
}
