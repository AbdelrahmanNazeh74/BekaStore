import 'package:flutter/material.dart';

class MonthlySalesReportPage extends StatelessWidget {
  const MonthlySalesReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monthly Sales Report'),
      ),
      body: const Center(child: Text('Monthly Sales Report Content')),
    );
  }
}
