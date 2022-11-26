import 'package:estacionamento/app/components/menu_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<EditScreen> createState() => _MyEditScreenState();
}

class _MyEditScreenState extends State<EditScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("edir"),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'edir',
            ),
          ],
        ),
      ),
    );
  }
}