import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Color> gradientColors = [
      Color(0xff23b6e6),
      Color(0xff02d39a),
    ];
    return AspectRatio(
      aspectRatio: 1.70,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Color(0xff232d37)
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 18.0, left: 12.0, top: 24, bottom: 12),
          child: FlChart(
            chart: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawHorizontalGrid: true,
                  getDrawingVerticalGridLine: (value) {
                    return const FlLine(
                      color: Color(0xff37434d),
                      strokeWidth:  1,
                    );
                  },
                  getDrawingHorizontalGridLine: (value) {
                    return const FlLine(
                      color: Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    textStyle: TextStyle(
                      color: const Color(0xff68737d),
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                    getTitles: (value) {
                      switch(value.toInt()) {
                        case 2: return '사전검사';
                        case 5: return '프로그램';
                        case 8: return '사후검사';
                      }

                      return '';
                    },
                    margin: 8,
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    textStyle: TextStyle(
                      color: const Color(0xff67727d),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    getTitles: (value) {
                      switch(value.toInt()) {
                        case 20: return '20T';
                        case 40: return '40T';
                        case 60: return '60T';
                      }
                      return '';
                    },
                    reservedSize: 28,
                    margin: 12,
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: Color(0xff37434d), width: 1)
                ),
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 70,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 40),
                      FlSpot(2.6, 30),
                      FlSpot(4.9, 60),
                      FlSpot(6.8, 40),
                      FlSpot(8, 50),
                      FlSpot(9.5, 40),
                      FlSpot(11, 50),
                    ],
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 5,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: false,
                    ),
                    belowBarData: BelowBarData(
                      show: true,
                      colors: gradientColors.map((color) => color.withOpacity(0.3)).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}