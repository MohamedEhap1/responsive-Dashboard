import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/active_and_inActive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// ****  0f57154c-5267-408b-9108-c214c4f42097  ******
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          )
        : InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
