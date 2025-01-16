import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_mobile_layout_widget.dart';
import 'package:responsive_dashboard/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      key: scaffoldKey,
      appBar: SizeConfig.width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      drawer:
          SizeConfig.width < SizeConfig.tablet ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffE5E5E5),
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayoutWidget(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
