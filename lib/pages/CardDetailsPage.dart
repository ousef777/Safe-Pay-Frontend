import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardDetailsPage extends StatelessWidget {
  final Map<String, dynamic> card;

  const CardDetailsPage({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Card Details', style: TextStyle(color: goldColor)),
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: goldColor),
        actions: [
          IconButton(
            icon: const Icon(Icons.home, color: goldColor),
            onPressed: () {
              context.push('/MainPage');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${card['cardHolderName']}',
                style: TextStyle(fontSize: 18, color: goldColor)),
            Text('Amount: ${card['amount']}',
                style: TextStyle(fontSize: 18, color: goldColor)),
            Text('Type: ${card['type']}',
                style: TextStyle(fontSize: 18, color: goldColor)),
            Text('Withdrawal Limit: ${card['withdrawalLimit']}',
                style: TextStyle(fontSize: 18, color: goldColor)),
            Text(
                'Expiry Date: ${card['expiryDate'].toLocal().toString().split(' ')[0]}',
                style: TextStyle(fontSize: 18, color: goldColor)),
          ],
        ),
      ),
    );
  }
}
