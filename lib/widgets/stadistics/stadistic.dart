import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Stadistic extends StatelessWidget {
  const Stadistic({super.key});

  static const name = "stadistic";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return SizedBox(
      height: height / 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 20,
            barTouchData: BarTouchData(enabled: true),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    const style = TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    );
                    switch (value.toInt()) {
                      case 0:
                        return Text('Lun', style: style);
                      case 1:
                        return Text('Mar', style: style);
                      case 2:
                        return Text('Mié', style: style);
                      case 3:
                        return Text('Jue', style: style);
                      case 4:
                        return Text('Vie', style: style);
                      case 5:
                        return Text('Sáb', style: style);
                      case 6:
                        return Text('Dom', style: style);
                      default:
                        return const Text('');
                    }
                  },
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: true, reservedSize: 28),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            borderData: FlBorderData(show: false),

            barGroups: [
              _buildBar(0, 10),
              _buildBar(1, 12),
              _buildBar(2, 8),
              _buildBar(3, 14),
              _buildBar(4, 6),
              _buildBar(5, 11),
              _buildBar(6, 9),
            ],
          ),
        ),
      ),
    );
  }

  BarChartGroupData _buildBar(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          width: 20,
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}
