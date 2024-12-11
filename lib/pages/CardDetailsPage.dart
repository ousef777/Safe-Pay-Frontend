import 'package:Frontend/models/card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class CardDetailsPage extends StatelessWidget {
  final VCard card;

  const CardDetailsPage({Key? key, required this.card}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;
    TextStyle textStyle = TextStyle(fontSize: 25, color: goldColor);

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
              GoRouter.of(context).go('/MainPage');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text('Id: ${card.id}',
            //     style: TextStyle(fontSize: 18, color: goldColor)),
            Text('Name: ${card.name}',
                style: textStyle),
                Text('Card Number: ${card.cardNumber}',
                style: textStyle),
            Text('Limit: ${card.limit} KWD',
                style: textStyle),
            Text(
                'Expiry Date: ${card.expiryDate}',
                style: textStyle),
            // Text('isExpired: ${card.isExpired}',
            //     style: TextStyle(fontSize: 18, color: goldColor)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: card.cardNumber.toString()));
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(goldColor)), 
                    child: const Text("Copy Card Number", style: TextStyle(color: Colors.black),)
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
