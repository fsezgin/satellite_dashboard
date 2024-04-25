import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class TableProvider extends ChangeNotifier {
  final url = Uri.parse("http://127.0.0.1:5000/satellite-data");
  List<Satellite> satellite = [];

 TableProvider() {
  print("içerideyiz1");
    fetchSatellite(); // Call fetchSatellite() in the constructor
  }

Future<void> fetchSatellite() async {
  try{
    final response = await http.get(url);

    final List<dynamic> res = jsonDecode(response.body) as List<dynamic>;
    
    if(response.statusCode == 200) {
      satellite = res.map((e) => Satellite.fromJson(e as Map<String, dynamic>)).toList();
      notifyListeners();
      print(satellite);
    }else{
      print(response.statusCode);
    }
  }catch(e){
    print(e.toString());
    }
  }
}

class Satellite {
   final num basinc1,
     basinc2,
     gps1Altitude,
     gps1Latitude,
     gps1Longitude,
     ioTData,
     paketNumarasi,
     pitch,
     pilGerilimi,
     roll,
     sicaklik,
     takimNo,
     uyduStatusu,
     yaw,
     yukseklik1,
     yukseklik2,
     inisHizi,
     irtifaFarki;
    String gondermeSaati,
     hataKodu,
     rhrh;

    Satellite({
        required this.basinc1,
        required this.basinc2,
        required this.gps1Altitude,
        required this.gps1Latitude,
        required this.gps1Longitude,
        required this.gondermeSaati,
        required this.hataKodu,
        required this.ioTData,
        required this.paketNumarasi,
        required this.pitch,
        required this.pilGerilimi,
        required this.rhrh,
        required this.roll,
        required this.sicaklik,
        required this.takimNo,
        required this.uyduStatusu,
        required this.yaw,
        required this.yukseklik1,
        required this.yukseklik2,
        required this.inisHizi,
        required this.irtifaFarki,
    });

     factory Satellite.fromJson(Map<String, dynamic> json) {
      return Satellite(basinc1: json["BASINÇ1"],
        basinc2: json["BASINÇ2"],
        gps1Altitude: json["GPS1 ALTITUDE"]?.toDouble(),
        gps1Latitude: json["GPS1 LATITUDE"]?.toDouble(),
        gps1Longitude: json["GPS1 LONGITUDE"]?.toDouble(),
        gondermeSaati: json["GÖNDERME SAATİ"],
        hataKodu: json["HATA KODU"],
        ioTData: json["IoT DATA"],
        paketNumarasi: json["PAKET NUMARASI"],
        pitch: json["PITCH"],
        pilGerilimi: json["PİL GERİLİMİ"]?.toDouble(),
        rhrh: json["RHRH"],
        roll: json["ROLL"],
        sicaklik: json["SICAKLIK"],
        takimNo: json["TAKIM NO"],
        uyduStatusu: json["UYDU STATÜSÜ"],
        yaw: json["YAW"],
        yukseklik1: json["YÜKSEKLİK1"],
        yukseklik2: json["YÜKSEKLİK2"],
        inisHizi: json["İNİŞ HIZI"],
        irtifaFarki: json["İRTİFA FARKI"],);
  }
}
