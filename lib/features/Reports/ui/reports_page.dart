import 'package:beka_store/features/Reports/ui/daily_entries_report_page.dart';
import 'package:beka_store/features/Reports/ui/late_installment_reports_page.dart';
import 'package:beka_store/features/Reports/ui/monthly_sales_reports_page.dart';
import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reports'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Late Installments'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LateInstallmentsReportPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Daily Entries'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const DailyEntriesReportPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Monthly Sales'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MonthlySalesReportPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
