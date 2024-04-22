import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


final url = Uri.parse("http://127.0.0.1:5000/satellite-data");

Future fetchSatellite() async {
  try{
    final response = await http.get(url);
    if(response.statusCode == 200) {
      var result = satelliteFromJson(response.body);
      return result;
    }else{
      print(response.statusCode);
    }
  }catch(e){
    print(e.toString());
  }
}

List<Satellite> satelliteFromJson(String str) => List<Satellite>.from(json.decode(str).map((x) => Satellite.fromJson(x)));

String satelliteToJson(List<Satellite> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Satellite {
    var basinc1;
    var basinc2;
    var gps1Altitude;
    var gps1Latitude;
    var gps1Longitude;
    String gondermeSaati;
    String hataKodu;
    var ioTData;
    var paketNumarasi;
    var pitch;
    double pilGerilimi;
    String rhrh;
    var roll;
    var sicaklik;
    var takimNo;
    var uyduStatusu;
    var yaw;
    var yukseklik1;
    var yukseklik2;
    var inisHizi;
    var irtifaFarki;

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

    factory Satellite.fromJson(Map<String, dynamic> json) => Satellite(
        basinc1: json["BASINÇ1"],
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
        irtifaFarki: json["İRTİFA FARKI"],
    );

    Map<String, dynamic> toJson() => {
        "BASINÇ1": basinc1,
        "BASINÇ2": basinc2,
        "GPS1 ALTITUDE": gps1Altitude,
        "GPS1 LATITUDE": gps1Latitude,
        "GPS1 LONGITUDE": gps1Longitude,
        "GÖNDERME SAATİ": gondermeSaati,
        "HATA KODU": hataKodu,
        "IoT DATA": ioTData,
        "PAKET NUMARASI": paketNumarasi,
        "PITCH": pitch,
        "PİL GERİLİMİ": pilGerilimi,
        "RHRH": rhrh,
        "ROLL": roll,
        "SICAKLIK": sicaklik,
        "TAKIM NO": takimNo,
        "UYDU STATÜSÜ": uyduStatusu,
        "YAW": yaw,
        "YÜKSEKLİK1": yukseklik1,
        "YÜKSEKLİK2": yukseklik2,
        "İNİŞ HIZI": inisHizi,
        "İRTİFA FARKI": irtifaFarki,
    };
}
