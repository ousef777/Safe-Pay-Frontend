import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> cards;

  const HistoryPage({Key? key, required this.cards}) : super(key: key);

  void _onItemTapped(BuildContext context, int index) {
    if (index == 0) {
      context.go('/MainPage', extra: {'cards': cards});
    } else if (index == 1) {
      context.go('/create-card', extra: {'cards': cards});
    } else if (index == 2) {
      context.go('/card-history', extra: {'cards': cards});
    }
  }

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Card History', style: TextStyle(color: goldColor)),
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: goldColor),
      ),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          final card = cards[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/Images/card-2.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              title: Text(
                'Name: ${card['cardHolderName']}',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amount: ${card['amount']}',
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Expiry Date: ${card['expiryDate'].toLocal()}'
                        .split(' ')[0],
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
              onTap: () {
                GoRouter.of(context).push('/details', extra: card);
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        selectedItemColor: goldColor,
        unselectedItemColor: goldColor,
        currentIndex: 2, // Set the current index to 'History'
        onTap: (index) => _onItemTapped(context, index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: goldColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add, color: goldColor),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, color: goldColor),
            label: 'History',
          ),
        ],
      ),
    );
  }
}
