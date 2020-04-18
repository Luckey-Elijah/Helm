import 'package:senior_design/Model/initial_missions.dart';

class MissionViewModel{


  MissionViewModel();

  void loadMissions()
  {

    InitMissions missions = new InitMissions();

    Future f = missions.loadMissions();

  }


}