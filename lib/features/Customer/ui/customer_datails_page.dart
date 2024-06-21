import 'package:flutter/material.dart';

class CustomerDetailPage extends StatelessWidget {
  final int customerId;

  CustomerDetailPage({required this.customerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Details'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: Customer 1'),
            Text('Phone 1: 123456789'),
            Text('Phone 2: 987654321'),
            Text('Notes: Regular customer'),
            Text('National Number: 1234567890'),
            Text('Expected Date: 01-01-2024'),
            Text('Arrival Date: 02-01-2024'),
            // Add form fields to update details
          ],
        ),
      ),
    );
  }
}
