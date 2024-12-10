import 'package:Frontend/models/card.dart';
import 'package:Frontend/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

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
      body: Expanded(
        child: FutureBuilder(
          future: context.read<VCardsProvider>().getVCards(),
          builder: (context, dataSnapshot) {
            return Consumer<VCardsProvider>(
              builder: (context, provider, _) {
                return ListView.builder(
                  itemCount: provider.cards.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      // onTap: () {
                      //   setState(() {
                      //     _selectedCardIndex = index;
                      //     _showCardNumber = !_showCardNumber;
                      //   });
                      // },
                      onDoubleTap: () => GoRouter.of(context).push('/details', extra: provider.cards[index]),
                      child: Opacity(
                        opacity: 1,
                        child: virtualCard(provider.cards[index])
                      ),
                    );
                  },
                );
              }
            );
          }
        ),
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

Widget virtualCard(VCard card) {
  // print("creating card");
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    clipBehavior: Clip.antiAlias,
    color: Colors.transparent,
    child: Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(45),
        color: Colors.transparent,
        image: const DecorationImage(
          image:
              AssetImage('assets/Images/card-2.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 32.0,
            bottom: 48.0,
            child: Text(
              'Name: ${card.name}', // fixed for now we need to change it
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            left: 32.0,
            bottom: 16.0,
            child: Text(
              card.cardNumber.toString(),
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
