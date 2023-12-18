import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          activeIndex =
              pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          showTitle: false,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
