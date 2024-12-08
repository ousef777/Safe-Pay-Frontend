import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Map<String, dynamic> cardDetails;

  const DetailsPage({required this.cardDetails, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${cardDetails['cardHolderName']}'),
            Text('Amount: ${cardDetails['amount']}'),
            Text('Type: ${cardDetails['type']}'),
            Text('Expiry Date: ${cardDetails['expiryDate']}'),
          ],
        ),
      ),
    );
  }
}
