import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (BuildContext context) {
        return const ResponsiveDashboardApp();
      },
    ),
  );
}

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const SafeArea(child: DashBoardView()),
    );
  }
}
