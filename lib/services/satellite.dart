import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


final url = Uri.parse('http://localhost:5000/satellite-data');

Future<Satellite> fetchSatellite() async {
  final response = await http
      .get(url);

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return jsonDecode(response.body);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load satellite data');
  }
}

class Satellite {
    int takimNo;
    Satellite({
        required this.takimNo,
    });

    factory Satellite.fromJson(Map<String, dynamic> json) => Satellite(
        takimNo: json["TAKIM NO"],
    );

    Map<String, dynamic> toJson() => {   
        "TAKIM NO": takimNo,
    };
    List<Satellite> satelliteFromJson(String str) => List<Satellite>.from(json.decode(str).map((x) => Satellite.fromJson(x)));
    String satelliteToJson(List<Satellite> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
}
