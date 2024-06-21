import 'package:beka_store/features/Customer/ui/customer_datails_page.dart';
import 'package:flutter/material.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Customer 1'),
            subtitle: const Text('Installments due: \$500'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CustomerDetailPage(customerId: 1)),
              );
            },
          ),
          // Add more customers here
        ],
      ),
    );
  }
}
