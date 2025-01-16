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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(0);
              });
            },
            child: AllExpensesItem(
                isSelected: isSelectedIndex == 0,
                allExpensesItemModel: items[0]),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(1);
              });
            },
            child: AllExpensesItem(
                isSelected: isSelectedIndex == 1,
                allExpensesItemModel: items[1]),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(2);
              });
            },
            child: AllExpensesItem(
                isSelected: isSelectedIndex == 2,
                allExpensesItemModel: items[2]),
          ),
        ),
      ],
    );
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                updateIndex(index);
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12.0 : 0),
              child: AllExpensesItem(
                  isSelected: isSelectedIndex == index,
                  allExpensesItemModel: e.value),
            ),
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
