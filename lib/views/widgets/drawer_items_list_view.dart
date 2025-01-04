import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List items = const [
    DrawerItemModel(title: "Dashboard", image: Assets.assetsImagesDashboard),
    DrawerItemModel(
        title: "My Transaction", image: Assets.assetsImagesMyTransctions),
    DrawerItemModel(title: "Statistics", image: Assets.assetsImagesStatistics),
    DrawerItemModel(
        title: "Wallet Account", image: Assets.assetsImagesWalletAccount),
    DrawerItemModel(
        title: "My Investments", image: Assets.assetsImagesMyInvestments),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
                log(activeIndex.toString());
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index ? true : false,
            ),
          ),
        );
      },
    );
  }
}
