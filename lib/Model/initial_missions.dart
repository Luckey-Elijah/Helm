import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<String> _loadMissionAsset() async {
  return await rootBundle.loadString('assets/init_mission_data.json');
}

void _parseJson(String json) {
  Map mMap = jsonDecode(json);
  print(mMap["missionList"][9]);
}

Future loadMissions() async {
  String json = await _loadMissionAsset();
  _parseJson(json);
}
