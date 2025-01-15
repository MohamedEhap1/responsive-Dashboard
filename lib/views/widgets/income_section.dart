import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';
import 'package:responsive_dashboard/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IncomeHeader(),
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(
                  height: 24,
                ),
                Expanded(child: IncomeDetails()),
              ],
            ),
          )
        ],
      ),
    );
  }
}
