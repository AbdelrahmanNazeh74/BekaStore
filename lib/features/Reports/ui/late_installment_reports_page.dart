import 'package:flutter/material.dart';

class LateInstallmentsReportPage extends StatelessWidget {
  const LateInstallmentsReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Late Installments Report'),
      ),
      body: const Center(child: Text('Late Installments Report Content')),
    );
  }
}
