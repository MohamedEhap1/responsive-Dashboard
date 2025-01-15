import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 42,
        ),
        CustomBackgroundContainer(
          child: Column(
            children: [
              MyCardsSection(),
              Divider(
                height: 40,
                color: Color(0xffF1F1F1),
              ),
              TransactionHistory(),
            ],
          ),
        ),
      ],
    );
  }
}
