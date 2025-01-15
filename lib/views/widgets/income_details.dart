import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_item_details.dart';
import 'package:responsive_dashboard/views/widgets/income_item_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const List<IncomeItemDetailsModel> items = [
    IncomeItemDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    IncomeItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    IncomeItemDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      value: "20%",
    ),
    IncomeItemDetailsModel(
      color: Color(0xffE2DECD),
      title: "other",
      value: "22%",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeItemDetails(
          incomeItemDetailsModel: items[index],
        );
      },
    );
  }
}
