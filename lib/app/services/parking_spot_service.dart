import 'dart:convert';
import 'package:estacionamento/app/models/parking_spot_model.dart';
import 'package:http/http.dart' as http;

import '../models/parking_spot_list_model.dart';

class ParkingSpotService{
  String urlGetListParkingSpot = "https://controle-vaga.herokuapp.com/parking-spot";
  String urlPostListparkingSpot = "https://controle-vaga.herokuapp.com/parking-spot";
  dynamic _response;

  ParkingSpotService(){
    _response="";
  }

  Future<ParkingSpotList> fetchListParkingSpot() async {
    _response = await http.get(Uri.parse(urlGetListParkingSpot));
    if (_response.statusCode == 200) {

       List<dynamic> list = json.decode(_response.body);

      return ParkingSpotList.fromJson(list);
    } else {
      throw Exception('Failed to load cote');
    }
  }

  Future<dynamic> fetchPostGarage(ParkingSpotModel garage) async {
    _response = await http.post(Uri.parse(urlPostListparkingSpot),body: json.encode(garage.toJson()) ,
        headers: {
          "Accept": "application/json",
          "content-type": "application/json"
        }
    );
    if (_response.statusCode == 200 || _response.statusCode == 201) {
      Map<String, dynamic> retorno = json.decode(_response.body);
      return ParkingSpotModel.fromJson(retorno) ;
    } else {
      return false;

    }

  }



}

