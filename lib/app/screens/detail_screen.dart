import 'package:estacionamento/app/components/menu_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DetailScreen> createState() => _MyDetailScreenState();
}

class _MyDetailScreenState extends State<DetailScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("detalhe"),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
                Text(

                'detalhe',
            ),
          ],
        ),
      ),
    );
  }
}
