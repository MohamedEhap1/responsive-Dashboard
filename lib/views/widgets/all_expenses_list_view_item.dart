import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesListViewItem extends StatefulWidget {
  const AllExpensesListViewItem({super.key});

  @override
  State<AllExpensesListViewItem> createState() =>
      _AllExpensesListViewItemState();
}

class _AllExpensesListViewItemState extends State<AllExpensesListViewItem> {
  final List items = const [
    AllExpensesItemModel(
      image: Assets.assetsImagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.assetsImagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.assetsImagesExpenses,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int isSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) {
      //   return Expanded(child: AllExpensesItem(allExpensesItemModel: e));
      // }).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        if (index != items.length - 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  updateIndex(index);
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: AllExpensesItem(
                    isSelected: isSelectedIndex == index,
                    allExpensesItemModel: e.value),
              ),
            ),
          );
        }
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: AllExpensesItem(
                isSelected: isSelectedIndex == index,
                allExpensesItemModel: e.value),
          ),
        );
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      isSelectedIndex = index;
    });
  }
}
