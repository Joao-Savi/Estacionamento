import 'package:estacionamento/app/components/menu_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RegisterScreen> createState() => _MyRegisterScreenState();
}

class _MyRegisterScreenState extends State<RegisterScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("register"),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'register',
            ),
          ],
        ),
      ),
    );
  }
}