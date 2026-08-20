import 'package:flutter/material.dart';
import 'package:easy_pie_chart/easy_pie_chart.dart';

class MyEasyPieChart extends StatelessWidget {
  const MyEasyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyPieChart(
      children: [
        PieData(
          value: 2.5,
          color: Colors.green,
        ),
        PieData(
          value: 0.68,
          color: Colors.blue,
        ),
        PieData(
          value: 0.45,
          color: const Color.fromARGB(255, 189, 75, 75),
        ),
      ],
    );
  }
}