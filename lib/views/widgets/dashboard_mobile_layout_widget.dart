import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayoutWidget extends StatelessWidget {
  const DashboardMobileLayoutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
