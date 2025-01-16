import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return (MediaQuery.sizeOf(context).width >= SizeConfig.desktop &&
            MediaQuery.sizeOf(context).width < 1360)
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                height: 24,
              ),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
