import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice(),
        ],
      ),
    );
  }
}
