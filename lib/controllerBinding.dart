
import 'package:estacionamento/app/controllers/parking_spot_controlller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

class ControllerBinding implements Bindings {

  @override
  void dependencies(){
    Get.lazyPut<ParkingSpotController>(() => ParkingSpotController());
  }
}