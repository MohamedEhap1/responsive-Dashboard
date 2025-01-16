import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout_widget.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: DashboardMobileLayoutWidget(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
