// import 'package:flutter/material.dart';

// class CardDetailsPage extends StatelessWidget {
//   final Map<String, dynamic> card;

//   const CardDetailsPage({Key? key, required this.card}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const Color backgroundColor = Colors.black;
//     const Color goldColor = Color(0xFFE9C575);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Card Details',
//           style: TextStyle(color: goldColor),
//         ),
//         backgroundColor: backgroundColor,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Name: ${card['cardHolderName']}',
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Amount: ${card['amount']}',
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Type: ${card['type']}',
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Withdrawal Limit: ${card['withdrawalLimit']}',
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Expiry Date: ${card['expiryDate'].toLocal()}'.split(' ')[0],
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               'Card Number: ${card['cardNumber']}',
//               style: const TextStyle(color: goldColor, fontSize: 18),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

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
