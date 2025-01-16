import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? -1.5 : null,
          showTitle: true,
          titleStyle: activeIndex == 0
              ? AppStyles.styleMedium16(context).copyWith(color: Colors.black)
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          title: activeIndex == 0 ? "Design service" : "40%",
          value: 40,
          radius: activeIndex == 0 ? 70 : 50,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: true,
          titlePositionPercentageOffset: activeIndex == 1 ? -1.5 : null,
          titleStyle: activeIndex == 1
              ? AppStyles.styleMedium16(context).copyWith(color: Colors.black)
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          title: activeIndex == 1 ? "Design product" : "25%",
          value: 25,
          radius: activeIndex == 1 ? 70 : 50,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: true,
          titlePositionPercentageOffset: activeIndex == 2 ? -1.5 : null,
          titleStyle: activeIndex == 2
              ? AppStyles.styleMedium16(context).copyWith(color: Colors.black)
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          title: activeIndex == 2 ? "Product royalti" : "20%",
          value: 20,
          radius: activeIndex == 2 ? 70 : 50,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          showTitle: true,
          titlePositionPercentageOffset: activeIndex == 3 ? -1.5 : null,
          titleStyle: activeIndex == 3
              ? AppStyles.styleMedium16(context).copyWith(color: Colors.black)
              : AppStyles.styleMedium16(context).copyWith(color: Colors.white),
          title: activeIndex == 3 ? "Other" : "22%",
          value: 22,
          radius: activeIndex == 3 ? 70 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
