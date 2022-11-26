import 'package:estacionamento/app/components/menu_components.dart';
import 'package:estacionamento/app/screens/detail_screen.dart';
import 'package:estacionamento/app/screens/edit_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/parking_spot_controlller.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var controller = ParkingSpotController.parkingSpotController;

  @override
  void initState() {
    super.initState();
    print(controller.listParkingSpot());
    // controller.listCurrecies();
  }
  void _incrementCounter() {
    setState(() {

      _counter  ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),

        drawer:
        MenuComponent(context),

        body:
        Obx(() =>
        controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            :
        Container(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: controller.listParkingSpotObs.length,
              itemBuilder: (BuildContext context, int index) {
                return

                  Card(
                    child:
                        Column(
                          children: [
                            ListTile(
                              title: Text(controller.listParkingSpotObs[index].responsibleName),
                              trailing: Wrap(
                                spacing: 12,
                                 children: <Widget>[
                                   IconButton(
                                       icon: const Icon(Icons.edit),
                                       color:Colors.blue,
                                       onPressed:(){
                                         Get.to(const EditScreen(title: "Editar"));
                                       }
                                   ),
                                   IconButton(
                                       icon: const Icon(Icons.delete),
                                       color:Colors.red,
                                       onPressed:(){

                                       }
                                   ),

                                 ],
                            ),
                            )],
                        ),
                      //
                );
              }),
        )
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}