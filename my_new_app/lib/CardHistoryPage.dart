// import 'package:flutter/material.dart';
// import 'package:my_new_app/CardDetailsPage.dart';

// class CardHistoryPage extends StatelessWidget {
//   final List<Map<String, dynamic>> cards;

//   const CardHistoryPage({Key? key, required this.cards}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const Color backgroundColor = Colors.black;
//     const Color goldColor = Color(0xFFE9C575);

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Card History',
//           style: TextStyle(color: goldColor),
//         ),
//         backgroundColor: backgroundColor,
//       ),
//       body: ListView.builder(
//         itemCount: cards.length,
//         itemBuilder: (context, index) {
//           final card = cards[index];
//           return Card(
//             color: backgroundColor,
//             child: ListTile(
//               title: Text(
//                 'Card Holder: ${card['cardHolderName']}',
//                 style: const TextStyle(color: goldColor),
//               ),
//               subtitle: Text(
//                 'Amount: ${card['amount']}\nExpiry Date: ${card['expiryDate'].toLocal()}'
//                     .split(' ')[0],
//                 style: const TextStyle(color: goldColor),
//               ),
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CardDetailsPage(card: card),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:my_new_app/CardDetailsPage.dart';
// import 'card_details_page.dart'; // Import the CardDetailsPage

class HistoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> cards;

  const HistoryPage({Key? key, required this.cards}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Card History', style: TextStyle(color: goldColor)),
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: goldColor),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Card: ${cards[index]['cardHolderName']}',
                style: TextStyle(color: goldColor)),
            subtitle: Text('Amount: ${cards[index]['amount']}',
                style: TextStyle(color: goldColor)),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardDetailsPage(card: cards[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
