import 'package:json_store/json_store.dart';
import 'goal.dart';
import 'mission.dart';

class MissionManager {
  JsonStore _jsonStore;
  final String _missionPrefix = 'mission-';

  MissionManager() {
    _jsonStore = JsonStore();
  }

  /// Add a [Mission] to the [JsonStore].
  Future<void> addMission(Mission mission) async {
    String missionKey = '$_missionPrefix${mission.name}';
    Map<String, dynamic> missionJson = mission.toJson();
    print(missionJson);
    await _jsonStore.setItem(missionKey, missionJson);
  }

  /// Remove the [Mission] from the [JsonStore]
  Future<void> removeMission(Mission mission) async {
    String missionKey = '$_missionPrefix${mission.name}';
    print('Deleting Mission: ${mission.toJson()}');
    await _jsonStore.deleteItem(missionKey);
  }

  /// Returns a list of all [Mission]s stored in the [JsonStore].
  Future<List<Mission>> getMissions() async {
    List<Map<String, dynamic>> missionJsonList = List<Map<String, dynamic>>();
    List<Mission> missionList = List<Mission>();

    missionJsonList = await _jsonStore.getListLike(_missionPrefix);

    // convert all Json objects to Mission objects.
    missionJsonList.forEach((missionJson) {
      missionList.add(Mission.fromJson(missionJson));
    });

    return missionList;
  }
}
