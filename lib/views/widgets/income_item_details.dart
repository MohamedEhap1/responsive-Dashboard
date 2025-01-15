import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/income_item_details_model.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeItemDetailsModel});
  final IncomeItemDetailsModel incomeItemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: incomeItemDetailsModel.color,
        radius: 12,
      ),
      title: Text(
        incomeItemDetailsModel.title,
        style:
            AppStyles.styleRegular16.copyWith(color: const Color(0xff208CC8)),
      ),
      trailing: Text(
        incomeItemDetailsModel.value,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
