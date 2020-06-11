import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Model/graph_data.dart';

class StatGraph extends StatelessWidget {
  final List<charts.Series> list = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      child: charts.LineChart(
        test(),
        animate: true,
      ),
    );
  }

  List<charts.Series<GraphData, int>> test() {
    final data = [
      new GraphData(1, 3),
      new GraphData(2, 2),
      new GraphData(3, 3),
    ];

    return [
      new charts.Series<GraphData, int>(
        id: "Test",
        colorFn: (_, __) => charts.MaterialPalette.white,
        domainFn: (GraphData gdata, _) => gdata.x,
        measureFn: (GraphData gdata, _) => gdata.y,
        displayName: "Display Name",
        seriesColor: charts.MaterialPalette.white,
        data: data,
      ),
    ];
  }
}
