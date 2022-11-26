import 'package:estacionamento/controllerBinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/screens/home_screen.dart';

void main() {

  ControllerBinding().dependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Estacionamento',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home'),
    );
  }
}
