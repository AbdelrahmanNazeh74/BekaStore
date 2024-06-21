import 'package:flutter/material.dart';

class DailyEntriesReportPage extends StatelessWidget {
  const DailyEntriesReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Entries Report'),
      ),
      body: const Center(child: Text('Daily Entries Report Content')),
    );
  }
}
