// import 'package:Frontend/main.dart';
import 'package:Frontend/models/card.dart';
import 'package:Frontend/pages/CardHistoryPage.dart';
import 'package:Frontend/pages/CreateCardPage.dart';
import 'package:Frontend/providers/auth_provider.dart';
import 'package:Frontend/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
// import 'package:my_new_app/CreateCardPage.dart';
// import 'create_card_page.dart'; // Import the CreateCardPage

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  bool _showCardNumber = false; // State to toggle card number visibility
  List<Map<String, dynamic>> cards = []; // List to store created cards
  late AnimationController _animationController;
  int? _selectedCardIndex;
  int _selectedIndex = 0; // To keep track of the selected navigation item

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Scaffold.of(context).openDrawer();
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateCardPage()),
      ).then((newCard) {
        if (newCard != null) {
          setState(() {
            newCard['showDetails'] =
                false; // Initialize showDetails to false for new cards
            cards.add(newCard);
            _animationController.forward(from: 0);
          });
        }
      });
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HistoryPage()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Define colors based on SignInPage styling
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Main Page',
          style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: goldColor),
      ),
      drawer: Drawer(
        backgroundColor: backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: backgroundColor),
              child: const Text('Menu',
                  style: TextStyle(color: goldColor, fontSize: 24)),
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: goldColor),
              title: const Text('Transaction History', style: TextStyle(color: goldColor)),
              onTap: () {
                // context.read<AuthProvider>().logout();
                // context.go('/SignInPage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: goldColor),
              title: const Text('Logout', style: TextStyle(color: goldColor)),
              onTap: () {
                context.read<AuthProvider>().logout();
                context.go('/SignInPage');
              },
            ),
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await context.read<AuthProvider>().getBalance();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: context.read<AuthProvider>().initAuth(),
            builder: (context, dataSnapshot) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Card(
                      color: backgroundColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Balance',
                                style: TextStyle(
                                    color: goldColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(height: 8),
                            Text('${context.watch<AuthProvider>().balance ?? '0.00'} KWD',
                                style: TextStyle(
                                    color: goldColor,
                                    fontSize: 36,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Recent Cards',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: goldColor,
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: context.read<VCardsProvider>().getVCards(),
                      builder: (context, dataSnapshot) {
                        return Consumer<VCardsProvider>(
                          builder: (context, provider, _) {
                            return ListView.builder(
                              itemCount: provider.activeCards.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedCardIndex = index;
                                      _showCardNumber = !_showCardNumber;
                                    });
                                  },
                                  onDoubleTap: () => GoRouter.of(context).push('/details', extra: provider.activeCards[index]),
                                  child: AnimatedBuilder(
                                    animation: _animationController,
                                    builder: (context, child) {
                                      return Transform.scale(
                                        scale: _selectedCardIndex == index ? 1.1 : 1.0,
                                        child: Opacity(
                                          opacity: 1,
                                          child: virtualCard(provider.activeCards[index], index)
                                        ),
                                      );
                                      // return Transform.scale(
                                      //   scale: _selectedCardIndex == index ? 1.2 : 1.0,
                                      //   child: Opacity(
                                      //     opacity: _animationController.value,
                                      //     child: virtualCard(provider.cards[index])
                                      //   ),
                                      // );
                                    },
                                  ),
                                );
                              },
                            );
                          }
                        );
                      }
                    ),
                  ),
                ],
              );
            }
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        selectedItemColor: goldColor,
        unselectedItemColor: goldColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
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

    Widget virtualCard(VCard card, int index) {
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
                _selectedCardIndex == index ? card.cardNumber.toString() : "Tap to show number",
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

}
