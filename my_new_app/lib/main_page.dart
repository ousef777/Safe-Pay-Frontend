// // // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // // class MainPage extends StatelessWidget {
// // // // // // // // // //   const MainPage({Key? key}) : super(key: key);

// // // // // // // // // //   @override
// // // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // // //     return Scaffold(
// // // // // // // // // //       appBar: AppBar(
// // // // // // // // // //         title: const Text('Main Page'),
// // // // // // // // // //       ),
// // // // // // // // // //       body: Center(
// // // // // // // // // //         child: Text(
// // // // // // // // // //           'Welcome to the Main Page!',
// // // // // // // // // //         ),
// // // // // // // // // //       ),
// // // // // // // // // //     );
// // // // // // // // // //   }
// // // // // // // // // // }

// // // // // // // // // //_______________

// // // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // // class MainPage extends StatelessWidget {
// // // // // // // // //   @override
// // // // // // // // //   Widget build(BuildContext context) {
// // // // // // // // //     return Scaffold(
// // // // // // // // //         backgroundColor: Colors.white, // Sets the background color of the page
// // // // // // // // //         appBar: AppBar(
// // // // // // // // //           title: Text(
// // // // // // // // //             'Main Page ',
// // // // // // // // //             style: TextStyle(
// // // // // // // // //               fontWeight: FontWeight.bold, // Makes the text bold
// // // // // // // // //             ),
// // // // // // // // //           ),
// // // // // // // // //         ),
// // // // // // // // //         body: SingleChildScrollView(
// // // // // // // // //             // Makes the body scrollable in case of overflow
// // // // // // // // //             // Make the page scrollable
// // // // // // // // //             child: Padding(
// // // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // // //           child: Column(
// // // // // // // // //             children: [
// // // // // // // // //               // Total Balance Card
// // // // // // // // //               Card(
// // // // // // // // //                 elevation: 4,
// // // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // // //                   borderRadius: BorderRadius.circular(10), // Rounded corners
// // // // // // // // //                 ),
// // // // // // // // //                 clipBehavior: Clip
// // // // // // // // //                     .antiAlias, // Ensures the image fits within the card's rounded corners

// // // // // // // // //                 child: Container(
// // // // // // // // //                   width: 350, // Adjust the width to resemble a credit card size
// // // // // // // // //                   height:
// // // // // // // // //                       200, // Adjust the height to resemble a credit card size
// // // // // // // // //                   decoration: BoxDecoration(
// // // // // // // // //                     image: DecorationImage(
// // // // // // // // //                       image: AssetImage(
// // // // // // // // //                           'assets/Images/card.png'), // Background image
// // // // // // // // //                       fit: BoxFit
// // // // // // // // //                           .cover, // Ensures the image covers the entire card
// // // // // // // // //                     ),
// // // // // // // // //                     borderRadius: BorderRadius.circular(
// // // // // // // // //                         10), // Rounded corners for the image
// // // // // // // // //                   ),
// // // // // // // // //                   child: Column(
// // // // // // // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // // //                     children: [
// // // // // // // // //                       ListTile(
// // // // // // // // //                         title: Text(
// // // // // // // // //                           'Total Balance',
// // // // // // // // //                           style: TextStyle(
// // // // // // // // //                               fontSize: 18,
// // // // // // // // //                               fontWeight: FontWeight.bold,
// // // // // // // // //                               color: Colors.white),
// // // // // // // // //                         ),
// // // // // // // // //                         subtitle: Text(
// // // // // // // // //                           'KD 1000', // Example total balance
// // // // // // // // //                           style: TextStyle(
// // // // // // // // //                               fontSize: 24,
// // // // // // // // //                               fontWeight: FontWeight.w600,
// // // // // // // // //                               color: Colors.white),
// // // // // // // // //                         ),
// // // // // // // // //                       ),
// // // // // // // // //                     ],
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //                 //  Column(// Added Column here
// // // // // // // // //                 //     children: [
// // // // // // // // //                 //   Image.asset(
// // // // // // // // //                 //     'assets/Images/card.png',
// // // // // // // // //                 //     fit: BoxFit.cover,
// // // // // // // // //                 //   ),
// // // // // // // // //                 //   ListTile(
// // // // // // // // //                 //     title: Text(
// // // // // // // // //                 //       'Total Balance',
// // // // // // // // //                 //       style:
// // // // // // // // //                 //           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // // // // // // //                 //     ),
// // // // // // // // //                 //     subtitle: Text(
// // // // // // // // //                 //       'KD 1000', // Example total balance
// // // // // // // // //                 //       style:
// // // // // // // // //                 //           TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
// // // // // // // // //                 //     ),
// // // // // // // // //                 //   ),
// // // // // // // // //                 // ]),
// // // // // // // // //               ),
// // // // // // // // //               SizedBox(height: 16),

// // // // // // // // //               // Account ****556 Card with Balance
// // // // // // // // //               Card(
// // // // // // // // //                 elevation: 4,
// // // // // // // // //                 color:
// // // // // // // // //                     Color(0xFF01A1E4), // Background color for the account card
// // // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // // //                 ),
// // // // // // // // //                 child: ListTile(
// // // // // // // // //                   title: Text(
// // // // // // // // //                     'Account ****556',
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       fontSize: 18,
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                       color: Colors.white,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                   subtitle: Text(
// // // // // // // // //                     'KD 1000', // Display account balance here
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       fontSize: 24,
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                       color: Colors.white,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               SizedBox(height: 16),

// // // // // // // // //               // Visa Account ****345 Card with Balance
// // // // // // // // //               Card(
// // // // // // // // //                 elevation: 4,
// // // // // // // // //                 color: Color(0xFF016CAC), // Background color for the visa card
// // // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // // //                 ),
// // // // // // // // //                 child: ListTile(
// // // // // // // // //                   title: Text(
// // // // // // // // //                     'Visa Account ****345',
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       fontSize: 18,
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                       color: Colors.white,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                   subtitle: Text(
// // // // // // // // //                     'KD 2,500', // Display visa account balance here
// // // // // // // // //                     style: TextStyle(
// // // // // // // // //                       fontSize: 24,
// // // // // // // // //                       fontWeight: FontWeight.bold,
// // // // // // // // //                       color: Colors.white,
// // // // // // // // //                     ),
// // // // // // // // //                   ),
// // // // // // // // //                 ),
// // // // // // // // //               ),
// // // // // // // // //               SizedBox(height: 16),
// // // // // // // // //             ],
// // // // // // // // //           ),
// // // // // // // // //         )));
// // // // // // // // //   }
// // // // // // // // // }

// // // // // // // // import 'package:flutter/material.dart';

// // // // // // // // class MainPage extends StatefulWidget {
// // // // // // // //   const MainPage({Key? key}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   _MainPageState createState() => _MainPageState();
// // // // // // // // }

// // // // // // // // class _MainPageState extends State<MainPage> {
// // // // // // // //   bool _showCardNumber = false; // State to toggle card number visibility

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     // Define colors based on SignInPage styling
// // // // // // // //     const Color goldColor = Color(0xFFE9C575);
// // // // // // // //     const Color backgroundColor = Colors.black;

// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: backgroundColor,
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text('Main Page',
// // // // // // // //             style: TextStyle(fontWeight: FontWeight.bold, color: goldColor)),
// // // // // // // //         backgroundColor: backgroundColor,
// // // // // // // //         elevation: 0,
// // // // // // // //         iconTheme: IconThemeData(color: goldColor),
// // // // // // // //       ),
// // // // // // // //       body: SingleChildScrollView(
// // // // // // // //         child: Padding(
// // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // //           child: Column(
// // // // // // // //             children: [
// // // // // // // //               GestureDetector(
// // // // // // // //                 onTap: () {
// // // // // // // //                   setState(() {
// // // // // // // //                     _showCardNumber =
// // // // // // // //                         !_showCardNumber; // Toggle card number visibility
// // // // // // // //                   });
// // // // // // // //                 },
// // // // // // // //                 child: Card(
// // // // // // // //                   elevation: 4,
// // // // // // // //                   shape: RoundedRectangleBorder(
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                   clipBehavior: Clip.antiAlias,
// // // // // // // //                   color: Colors
// // // // // // // //                       .transparent, // Set the card background to transparent
// // // // // // // //                   child: Container(
// // // // // // // //                     width: double.infinity,
// // // // // // // //                     height: 200,
// // // // // // // //                     decoration: BoxDecoration(
// // // // // // // //                       color: Colors
// // // // // // // //                           .transparent, // Set the container background to transparent
// // // // // // // //                       image: const DecorationImage(
// // // // // // // //                         image: AssetImage('assets/Images/card.png'),
// // // // // // // //                         fit: BoxFit.cover,
// // // // // // // //                       ),
// // // // // // // //                       borderRadius: BorderRadius.circular(10),
// // // // // // // //                     ),
// // // // // // // //                     child: Stack(
// // // // // // // //                       children: [
// // // // // // // //                         Column(
// // // // // // // //                           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                           children: [
// // // // // // // //                             Padding(
// // // // // // // //                               padding: const EdgeInsets.only(left: 16.0),
// // // // // // // //                               child: ListTile(
// // // // // // // //                                 title: Text(
// // // // // // // //                                   'Total Balance',
// // // // // // // //                                   style: TextStyle(
// // // // // // // //                                       fontSize: 18,
// // // // // // // //                                       fontWeight: FontWeight.bold,
// // // // // // // //                                       color: Colors.white),
// // // // // // // //                                 ),
// // // // // // // //                                 subtitle: Text(
// // // // // // // //                                   'KD 1000', // Example total balance
// // // // // // // //                                   style: TextStyle(
// // // // // // // //                                       fontSize: 24,
// // // // // // // //                                       fontWeight: FontWeight.w600,
// // // // // // // //                                       color: Colors.white),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                           ],
// // // // // // // //                         ),
// // // // // // // //                         if (_showCardNumber)
// // // // // // // //                           Positioned(
// // // // // // // //                             left: 16.0, // Align the number to the left
// // // // // // // //                             bottom: 16.0,
// // // // // // // //                             child: Text(
// // // // // // // //                               '4152 5468 9012 3456', // Example card number starting with 415254
// // // // // // // //                               style:
// // // // // // // //                                   TextStyle(fontSize: 18, color: Colors.white),
// // // // // // // //                             ),
// // // // // // // //                           ),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Example image card
// // // // // // // //               Card(
// // // // // // // //                 elevation: 4,
// // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // //                 ),
// // // // // // // //                 clipBehavior: Clip.antiAlias,
// // // // // // // //                 color: Colors
// // // // // // // //                     .transparent, // Set the card background to transparent
// // // // // // // //                 child: Container(
// // // // // // // //                   width: double.infinity,
// // // // // // // //                   height: 200,
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     color: Colors
// // // // // // // //                         .transparent, // Set the container background to transparent
// // // // // // // //                     image: DecorationImage(
// // // // // // // //                       image: AssetImage(
// // // // // // // //                           'assets/Images/card.png'), // Replace with another card image
// // // // // // // //                       fit: BoxFit.cover,
// // // // // // // //                     ),
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Example image card
// // // // // // // //               Card(
// // // // // // // //                 elevation: 4,
// // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // //                 ),
// // // // // // // //                 clipBehavior: Clip.antiAlias,
// // // // // // // //                 color: Colors
// // // // // // // //                     .transparent, // Set the card background to transparent
// // // // // // // //                 child: Container(
// // // // // // // //                   width: double.infinity,
// // // // // // // //                   height: 200,
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     color: Colors
// // // // // // // //                         .transparent, // Set the container background to transparent
// // // // // // // //                     image: DecorationImage(
// // // // // // // //                       image: AssetImage(
// // // // // // // //                           'assets/Images/card.png'), // Replace with another card image
// // // // // // // //                       fit: BoxFit.cover,
// // // // // // // //                     ),
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Transaction section
// // // // // // // //               Text(
// // // // // // // //                 'Recent Transactions',
// // // // // // // //                 style: TextStyle(
// // // // // // // //                     fontSize: 18,
// // // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // // //                     color: Colors.white),
// // // // // // // //               ),
// // // // // // // //               ListView.builder(
// // // // // // // //                 shrinkWrap:
// // // // // // // //                     true, // Ensures the ListView takes only necessary space
// // // // // // // //                 physics:
// // // // // // // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // // // // // // //                 itemCount: 5, // Example number of transactions
// // // // // // // //                 itemBuilder: (context, index) {
// // // // // // // //                   return ListTile(
// // // // // // // //                     title: Text('Transaction #$index',
// // // // // // // //                         style: TextStyle(color: Colors.white)),
// // // // // // // //                     subtitle: Text('Details of transaction',
// // // // // // // //                         style: TextStyle(color: Colors.white70)),
// // // // // // // //                   );
// // // // // // // //                 },
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // // // //         backgroundColor: backgroundColor,
// // // // // // // //         selectedItemColor: goldColor,
// // // // // // // //         unselectedItemColor: Colors.grey,
// // // // // // // //         items: const [
// // // // // // // //           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Card'),
// // // // // // // //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// // // // // // // //         ],
// // // // // // // //         onTap: (index) {
// // // // // // // //           // Handle bottom navigation bar taps
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // //______________________________________-

// // // // // // // // import 'package:flutter/material.dart';
// // // // // // // // import 'package:go_router/go_router.dart';

// // // // // // // // class MainPage extends StatefulWidget {
// // // // // // // //   const MainPage({Key? key}) : super(key: key);

// // // // // // // //   @override
// // // // // // // //   _MainPageState createState() => _MainPageState();
// // // // // // // // }

// // // // // // // // class _MainPageState extends State<MainPage> {
// // // // // // // //   bool _showCardNumber = false; // State to toggle card number visibility

// // // // // // // //   @override
// // // // // // // //   Widget build(BuildContext context) {
// // // // // // // //     // Define colors based on SignInPage styling
// // // // // // // //     const Color goldColor = Color(0xFFE9C575);
// // // // // // // //     const Color backgroundColor = Colors.black;

// // // // // // // //     return Scaffold(
// // // // // // // //       backgroundColor: backgroundColor,
// // // // // // // //       appBar: AppBar(
// // // // // // // //         title: Text(
// // // // // // // //           'Main Page',
// // // // // // // //           style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
// // // // // // // //         ),
// // // // // // // //         backgroundColor: backgroundColor,
// // // // // // // //         elevation: 0,
// // // // // // // //         iconTheme: IconThemeData(color: goldColor),
// // // // // // // //       ),
// // // // // // // //       drawer: Drawer(
// // // // // // // //         child: ListView(
// // // // // // // //           padding: EdgeInsets.zero,
// // // // // // // //           children: [
// // // // // // // //             DrawerHeader(
// // // // // // // //               decoration: BoxDecoration(
// // // // // // // //                 color: backgroundColor,
// // // // // // // //               ),
// // // // // // // //               child: Text(
// // // // // // // //                 'Menu',
// // // // // // // //                 style: TextStyle(color: goldColor, fontSize: 24),
// // // // // // // //               ),
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.home, color: goldColor),
// // // // // // // //               title: Text('Home', style: TextStyle(color: goldColor)),
// // // // // // // //               onTap: () {
// // // // // // // //                 context.go('/MainPage'); // Navigate to MainPage
// // // // // // // //               },
// // // // // // // //             ),
// // // // // // // //             ListTile(
// // // // // // // //               leading: Icon(Icons.logout, color: goldColor),
// // // // // // // //               title: Text('Logout', style: TextStyle(color: goldColor)),
// // // // // // // //               onTap: () {
// // // // // // // //                 context.go('/SignInPage'); // Navigate to SignInPage
// // // // // // // //               },
// // // // // // // //             ),
// // // // // // // //           ],
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //       body: SingleChildScrollView(
// // // // // // // //         child: Padding(
// // // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // // //           child: Column(
// // // // // // // //             children: [
// // // // // // // //               GestureDetector(
// // // // // // // //                 onTap: () {
// // // // // // // //                   setState(() {
// // // // // // // //                     _showCardNumber =
// // // // // // // //                         !_showCardNumber; // Toggle card number visibility
// // // // // // // //                   });
// // // // // // // //                 },
// // // // // // // //                 child: Card(
// // // // // // // //                   elevation: 4,
// // // // // // // //                   shape: RoundedRectangleBorder(
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                   clipBehavior: Clip.antiAlias,
// // // // // // // //                   color: Colors
// // // // // // // //                       .transparent, // Set the card background to transparent
// // // // // // // //                   child: Container(
// // // // // // // //                     width: double.infinity,
// // // // // // // //                     height: 200,
// // // // // // // //                     decoration: BoxDecoration(
// // // // // // // //                       color: Colors
// // // // // // // //                           .transparent, // Set the container background to transparent
// // // // // // // //                       image: const DecorationImage(
// // // // // // // //                         image: AssetImage('assets/Images/card.png'),
// // // // // // // //                         fit: BoxFit.cover,
// // // // // // // //                       ),
// // // // // // // //                       borderRadius: BorderRadius.circular(10),
// // // // // // // //                     ),
// // // // // // // //                     child: Stack(
// // // // // // // //                       children: [
// // // // // // // //                         Column(
// // // // // // // //                           mainAxisAlignment: MainAxisAlignment.center,
// // // // // // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // // //                           children: [
// // // // // // // //                             Padding(
// // // // // // // //                               padding: const EdgeInsets.only(left: 16.0),
// // // // // // // //                               child: ListTile(
// // // // // // // //                                 title: Text(
// // // // // // // //                                   'Total Balance',
// // // // // // // //                                   style: TextStyle(
// // // // // // // //                                       fontSize: 18,
// // // // // // // //                                       fontWeight: FontWeight.bold,
// // // // // // // //                                       color: Colors.white),
// // // // // // // //                                 ),
// // // // // // // //                                 subtitle: Text(
// // // // // // // //                                   'KD 1000', // Example total balance
// // // // // // // //                                   style: TextStyle(
// // // // // // // //                                       fontSize: 24,
// // // // // // // //                                       fontWeight: FontWeight.w600,
// // // // // // // //                                       color: Colors.white),
// // // // // // // //                                 ),
// // // // // // // //                               ),
// // // // // // // //                             ),
// // // // // // // //                           ],
// // // // // // // //                         ),
// // // // // // // //                         if (_showCardNumber)
// // // // // // // //                           Positioned(
// // // // // // // //                             left: 16.0, // Align the number to the left
// // // // // // // //                             bottom: 16.0,
// // // // // // // //                             child: Text(
// // // // // // // //                               '4152 5468 9012 3456', // Example card number starting with 415254
// // // // // // // //                               style:
// // // // // // // //                                   TextStyle(fontSize: 18, color: Colors.white),
// // // // // // // //                             ),
// // // // // // // //                           ),
// // // // // // // //                       ],
// // // // // // // //                     ),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Example image card
// // // // // // // //               Card(
// // // // // // // //                 elevation: 4,
// // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // //                 ),
// // // // // // // //                 clipBehavior: Clip.antiAlias,
// // // // // // // //                 color: Colors
// // // // // // // //                     .transparent, // Set the card background to transparent
// // // // // // // //                 child: Container(
// // // // // // // //                   width: double.infinity,
// // // // // // // //                   height: 200,
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     color: Colors
// // // // // // // //                         .transparent, // Set the container background to transparent
// // // // // // // //                     image: DecorationImage(
// // // // // // // //                       image: AssetImage(
// // // // // // // //                           'assets/Images/card2.png'), // Replace with another card image
// // // // // // // //                       fit: BoxFit.cover,
// // // // // // // //                     ),
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Example image card
// // // // // // // //               Card(
// // // // // // // //                 elevation: 4,
// // // // // // // //                 shape: RoundedRectangleBorder(
// // // // // // // //                   borderRadius: BorderRadius.circular(10),
// // // // // // // //                 ),
// // // // // // // //                 clipBehavior: Clip.antiAlias,
// // // // // // // //                 color: Colors
// // // // // // // //                     .transparent, // Set the card background to transparent
// // // // // // // //                 child: Container(
// // // // // // // //                   width: double.infinity,
// // // // // // // //                   height: 200,
// // // // // // // //                   decoration: BoxDecoration(
// // // // // // // //                     color: Colors
// // // // // // // //                         .transparent, // Set the container background to transparent
// // // // // // // //                     image: DecorationImage(
// // // // // // // //                       image: AssetImage(
// // // // // // // //                           'assets/Images/card3.png'), // Replace with another card image
// // // // // // // //                       fit: BoxFit.cover,
// // // // // // // //                     ),
// // // // // // // //                     borderRadius: BorderRadius.circular(10),
// // // // // // // //                   ),
// // // // // // // //                 ),
// // // // // // // //               ),
// // // // // // // //               SizedBox(height: 16),

// // // // // // // //               // Transaction section
// // // // // // // //               Text(
// // // // // // // //                 'Recent Transactions',
// // // // // // // //                 style: TextStyle(
// // // // // // // //                     fontSize: 18,
// // // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // // //                     color: Colors.white),
// // // // // // // //               ),
// // // // // // // //               ListView.builder(
// // // // // // // //                 shrinkWrap:
// // // // // // // //                     true, // Ensures the ListView takes only necessary space
// // // // // // // //                 physics:
// // // // // // // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // // // // // // //                 itemCount: 5, // Example number of transactions
// // // // // // // //                 itemBuilder: (context, index) {
// // // // // // // //                   return ListTile(
// // // // // // // //                     title: Text('Transaction #$index',
// // // // // // // //                         style: TextStyle(color: Colors.white)),
// // // // // // // //                     subtitle: Text('Details of transaction',
// // // // // // // //                         style: TextStyle(color: Colors.white70)),
// // // // // // // //                   );
// // // // // // // //                 },
// // // // // // // //               ),
// // // // // // // //             ],
// // // // // // // //           ),
// // // // // // // //         ),
// // // // // // // //       ),
// // // // // // // //       bottomNavigationBar: BottomNavigationBar(
// // // // // // // //         backgroundColor: backgroundColor,
// // // // // // // //         selectedItemColor: goldColor,
// // // // // // // //         unselectedItemColor: Colors.grey,
// // // // // // // //         items: const [
// // // // // // // //           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Card'),
// // // // // // // //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// // // // // // // //         ],
// // // // // // // //         onTap: (index) {
// // // // // // // //           // Handle bottom navigation bar taps
// // // // // // // //         },
// // // // // // // //       ),
// // // // // // // //     );
// // // // // // // //   }
// // // // // // // // }
// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:go_router/go_router.dart';
// // // // // // // import 'package:my_new_app/CreateCardPage.dart';
// // // // // // // // import 'create_card_page.dart'; // Import the CreateCardPage

// // // // // // // class MainPage extends StatefulWidget {
// // // // // // //   const MainPage({Key? key}) : super(key: key);

// // // // // // //   @override
// // // // // // //   _MainPageState createState() => _MainPageState();
// // // // // // // }

// // // // // // // class _MainPageState extends State<MainPage>
// // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // //   bool _showCardNumber = false; // State to toggle card number visibility
// // // // // // //   List<Map<String, dynamic>> cards = []; // List to store created cards
// // // // // // //   late AnimationController _animationController;

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _animationController = AnimationController(
// // // // // // //       duration: const Duration(milliseconds: 500),
// // // // // // //       vsync: this,
// // // // // // //     );
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   void dispose() {
// // // // // // //     _animationController.dispose();
// // // // // // //     super.dispose();
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     // Define colors based on SignInPage styling
// // // // // // //     const Color goldColor = Color(0xFFE9C575);
// // // // // // //     const Color backgroundColor = Colors.black;

// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: backgroundColor,
// // // // // // //       appBar: AppBar(
// // // // // // //         title: Text(
// // // // // // //           'Main Page',
// // // // // // //           style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
// // // // // // //         ),
// // // // // // //         backgroundColor: backgroundColor,
// // // // // // //         elevation: 0,
// // // // // // //         iconTheme: IconThemeData(color: goldColor),
// // // // // // //       ),
// // // // // // //       drawer: Drawer(
// // // // // // //         child: ListView(
// // // // // // //           padding: EdgeInsets.zero,
// // // // // // //           children: [
// // // // // // //             DrawerHeader(
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: backgroundColor,
// // // // // // //               ),
// // // // // // //               child: Text(
// // // // // // //                 'Menu',
// // // // // // //                 style: TextStyle(color: goldColor, fontSize: 24),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //             ListTile(
// // // // // // //               leading: Icon(Icons.home, color: goldColor),
// // // // // // //               title: Text('Home', style: TextStyle(color: goldColor)),
// // // // // // //               onTap: () {
// // // // // // //                 context.go('/MainPage'); // Navigate to MainPage
// // // // // // //               },
// // // // // // //             ),
// // // // // // //             ListTile(
// // // // // // //               leading: Icon(Icons.logout, color: goldColor),
// // // // // // //               title: Text('Logout', style: TextStyle(color: goldColor)),
// // // // // // //               onTap: () {
// // // // // // //                 context.go('/SignInPage'); // Navigate to SignInPage
// // // // // // //               },
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //       body: SingleChildScrollView(
// // // // // // //         child: Padding(
// // // // // // //           padding: const EdgeInsets.all(16.0),
// // // // // // //           child: Column(
// // // // // // //             children: [
// // // // // // //               // Display created cards
// // // // // // //               for (var card in cards)
// // // // // // //                 FadeTransition(
// // // // // // //                   opacity: _animationController,
// // // // // // //                   child: Card(
// // // // // // //                     elevation: 4,
// // // // // // //                     shape: RoundedRectangleBorder(
// // // // // // //                       borderRadius: BorderRadius.circular(10),
// // // // // // //                     ),
// // // // // // //                     clipBehavior: Clip.antiAlias,
// // // // // // //                     color: Colors
// // // // // // //                         .transparent, // Set the card background to transparent
// // // // // // //                     child: Container(
// // // // // // //                       width: double.infinity,
// // // // // // //                       height: 200,
// // // // // // //                       decoration: BoxDecoration(
// // // // // // //                         color: Colors
// // // // // // //                             .transparent, // Set the container background to transparent
// // // // // // //                         image: DecorationImage(
// // // // // // //                           image: AssetImage(
// // // // // // //                               'assets/Images/card.png'), // Replace with your custom card image path
// // // // // // //                           fit: BoxFit.cover,
// // // // // // //                         ),
// // // // // // //                         borderRadius: BorderRadius.circular(10),
// // // // // // //                       ),
// // // // // // //                       child: Stack(
// // // // // // //                         children: [
// // // // // // //                           Padding(
// // // // // // //                             padding: const EdgeInsets.all(16.0),
// // // // // // //                             child: Column(
// // // // // // //                               crossAxisAlignment: CrossAxisAlignment.start,
// // // // // // //                               mainAxisAlignment: MainAxisAlignment.center,
// // // // // // //                               children: [
// // // // // // //                                 Text(
// // // // // // //                                   'Name: ${card['name']}',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                       fontSize: 18,
// // // // // // //                                       fontWeight: FontWeight.bold,
// // // // // // //                                       color: Colors.white),
// // // // // // //                                 ),
// // // // // // //                                 Text(
// // // // // // //                                   'Amount: ${card['amount']}',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                       fontSize: 16, color: Colors.white),
// // // // // // //                                 ),
// // // // // // //                                 Text(
// // // // // // //                                   'Type: ${card['type']}',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                       fontSize: 16, color: Colors.white),
// // // // // // //                                 ),
// // // // // // //                                 Text(
// // // // // // //                                   'Withdrawal Limit: ${card['withdrawalLimit']}',
// // // // // // //                                   style: TextStyle(
// // // // // // //                                       fontSize: 16, color: Colors.white),
// // // // // // //                                 ),
// // // // // // //                                 Text(
// // // // // // //                                   'Expiry Date: ${card['expiryDate'].toLocal()}'
// // // // // // //                                       .split(' ')[0], // Show expiry date
// // // // // // //                                   style: TextStyle(
// // // // // // //                                       fontSize: 16, color: Colors.white),
// // // // // // //                                 ),
// // // // // // //                               ],
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           Positioned(
// // // // // // //                             right: 16.0, // Align the number to the right
// // // // // // //                             bottom: 16.0,
// // // // // // //                             child: GestureDetector(
// // // // // // //                               onTap: () {
// // // // // // //                                 setState(() {
// // // // // // //                                   _showCardNumber = !_showCardNumber;
// // // // // // //                                 });
// // // // // // //                               },
// // // // // // //                               child: Text(
// // // // // // //                                 _showCardNumber
// // // // // // //                                     ? '4152 5468 9012 3456'
// // // // // // //                                     : 'Show Number',
// // // // // // //                                 style: TextStyle(
// // // // // // //                                     fontSize: 18, color: Colors.white),
// // // // // // //                               ),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                         ],
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ),
// // // // // // //               const SizedBox(height: 16),
// // // // // // //               Text(
// // // // // // //                 'Recent Transactions',
// // // // // // //                 style: TextStyle(
// // // // // // //                     fontSize: 18,
// // // // // // //                     fontWeight: FontWeight.bold,
// // // // // // //                     color: Colors.white),
// // // // // // //               ),
// // // // // // //               ListView.builder(
// // // // // // //                 shrinkWrap:
// // // // // // //                     true, // Ensures the ListView takes only necessary space
// // // // // // //                 physics:
// // // // // // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // // // // // //                 itemCount: 5, // Example number of transactions
// // // // // // //                 itemBuilder: (context, index) {
// // // // // // //                   return ListTile(
// // // // // // //                     title: Text('Transaction #$index',
// // // // // // //                         style: TextStyle(color: Colors.white)),
// // // // // // //                     subtitle: Text('Details of transaction',
// // // // // // //                         style: TextStyle(color: Colors.white70)),
// // // // // // //                   );
// // // // // // //                 },
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //       floatingActionButton: FloatingActionButton(
// // // // // // //         backgroundColor: goldColor,
// // // // // // //         onPressed: () async {
// // // // // // //           final newCard = await Navigator.push(
// // // // // // //             context,
// // // // // // //             MaterialPageRoute(builder: (context) => CreateCardPage()),
// // // // // // //           );
// // // // // // //           if (newCard != null) {
// // // // // // //             setState(() {
// // // // // // //               cards.add(newCard);
// // // // // // //               _animationController.forward(from: 1);
// // // // // // //             });
// // // // // // //           }
// // // // // // //         },
// // // // // // //         child: Icon(Icons.add, color: Colors.black),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:go_router/go_router.dart';
// // // // // import 'package:my_new_app/CreateCardPage.dart';
// // // // // // import 'create_card_page.dart'; // Import the CreateCardPage

// // // // // class MainPage extends StatefulWidget {
// // // // //   const MainPage({super.key});

// // // // //   @override
// // // // //   _MainPageState createState() => _MainPageState();
// // // // // }

// // // // // class _MainPageState extends State<MainPage>
// // // // //     with SingleTickerProviderStateMixin {
// // // // //   bool _showCardNumber = false; // State to toggle card number visibility
// // // // //   List<Map<String, dynamic>> cards = []; // List to store created cards
// // // // //   late AnimationController _animationController;
// // // // //   int? _selectedCardIndex;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _animationController = AnimationController(
// // // // //       duration: const Duration(milliseconds: 500),
// // // // //       vsync: this,
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _animationController.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   bool _isMobile() {
// // // // //     final data = MediaQuery.of(context);
// // // // //     return data.size.shortestSide < 600;
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     // Define colors based on SignInPage styling
// // // // //     const Color goldColor = Color(0xFFE9C575);
// // // // //     const Color backgroundColor = Colors.black;

// // // // //     return Scaffold(
// // // // //       backgroundColor: backgroundColor,
// // // // //       appBar: AppBar(
// // // // //         title: Text(
// // // // //           'Main Page',
// // // // //           style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
// // // // //         ),
// // // // //         backgroundColor: backgroundColor,
// // // // //         elevation: 0,
// // // // //         iconTheme: IconThemeData(color: goldColor),
// // // // //       ),
// // // // //       drawer: Drawer(
// // // // //         backgroundColor: Colors.black,
// // // // //         child: ListView(
// // // // //           padding: EdgeInsets.zero,
// // // // //           children: [
// // // // //             DrawerHeader(
// // // // //               decoration: BoxDecoration(
// // // // //                 color: backgroundColor,
// // // // //               ),
// // // // //               child: Text(
// // // // //                 'Menu',
// // // // //                 style: TextStyle(color: goldColor, fontSize: 24),
// // // // //               ),
// // // // //             ),
// // // // //             // ListTile(
// // // // //             //   leading: Icon(Icons.home, color: goldColor),
// // // // //             //   title: Text('Home', style: TextStyle(color: goldColor)),
// // // // //             //   onTap: () {
// // // // //             //     context.go('/MainPage'); // Navigate to MainPage
// // // // //             //   },
// // // // //             // ),
// // // // //             ListTile(
// // // // //               leading: Icon(Icons.logout, color: goldColor),
// // // // //               title: Text('Logout', style: TextStyle(color: goldColor)),
// // // // //               onTap: () {
// // // // //                 context.go('/SignInPage'); // Navigate to SignInPage
// // // // //               },
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //       body: SingleChildScrollView(
// // // // //         child: Padding(
// // // // //           padding: const EdgeInsets.all(16.0),
// // // // //           child: Column(
// // // // //             children: [
// // // // //               // Display created cards
// // // // //               for (int index = 0; index < cards.length; index++)
// // // // //                 GestureDetector(
// // // // //                   onTap: () {
// // // // //                     setState(() {
// // // // //                       _selectedCardIndex = index;
// // // // //                       _animationController.forward(from: 0);
// // // // //                     });
// // // // //                   },
// // // // //                   child: AnimatedBuilder(
// // // // //                     animation: _animationController,
// // // // //                     builder: (context, child) {
// // // // //                       return Transform.scale(
// // // // //                         scale: _selectedCardIndex == index ? 1.2 : 1.0,
// // // // //                         child: Opacity(
// // // // //                           opacity: _animationController.value,
// // // // //                           child: Card(
// // // // //                             elevation: 4,
// // // // //                             shape: RoundedRectangleBorder(
// // // // //                               borderRadius: BorderRadius.circular(10),
// // // // //                             ),
// // // // //                             clipBehavior: Clip.antiAlias,
// // // // //                             color: Colors
// // // // //                                 .transparent, // Set the card background to transparent
// // // // //                             child: Container(
// // // // //                               width: double.infinity,
// // // // //                               height: 200,
// // // // //                               decoration: BoxDecoration(
// // // // //                                 color: Colors
// // // // //                                     .transparent, // Set the container background to transparent
// // // // //                                 image: DecorationImage(
// // // // //                                   image: AssetImage(
// // // // //                                       'assets/Images/card-2.png'), // Replace with your custom card image path
// // // // //                                   fit: BoxFit.cover,
// // // // //                                 ),
// // // // //                                 // borderRadius: BorderRadius.circular(16),
// // // // //                               ),
// // // // //                               child: Stack(
// // // // //                                 children: [
// // // // //                                   Padding(
// // // // //                                     padding: const EdgeInsets.all(16.0),
// // // // //                                     child: Column(
// // // // //                                       crossAxisAlignment:
// // // // //                                           CrossAxisAlignment.start,
// // // // //                                       mainAxisAlignment:
// // // // //                                           MainAxisAlignment.center,
// // // // //                                       children: [
// // // // //                                         Text(
// // // // //                                           'Name: ${cards[index]['cardHolderName']}',
// // // // //                                           style: TextStyle(
// // // // //                                               fontSize: 18,
// // // // //                                               fontWeight: FontWeight.bold,
// // // // //                                               color: Colors.black),
// // // // //                                         ),
// // // // //                                         Text(
// // // // //                                           'Amount: ${cards[index]['amount']}',
// // // // //                                           style: TextStyle(
// // // // //                                               fontSize: 18,
// // // // //                                               color: Colors.black),
// // // // //                                         ),
// // // // //                                         Text(
// // // // //                                           'Type: ${cards[index]['type']}',
// // // // //                                           style: TextStyle(
// // // // //                                               fontSize: 18,
// // // // //                                               color: Colors.black),
// // // // //                                         ),
// // // // //                                         Text(
// // // // //                                           'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
// // // // //                                           style: TextStyle(
// // // // //                                               fontSize: 18,
// // // // //                                               color: Colors.black),
// // // // //                                         ),
// // // // //                                         Text(
// // // // //                                           'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
// // // // //                                               .split(
// // // // //                                                   ' ')[0], // Show expiry date
// // // // //                                           style: TextStyle(
// // // // //                                               fontSize: 18,
// // // // //                                               color: Colors.black),
// // // // //                                         ),
// // // // //                                       ],
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   Positioned(
// // // // //                                     right:
// // // // //                                         16.0, // Align the number to the right
// // // // //                                     bottom: 16.0,
// // // // //                                     child: GestureDetector(
// // // // //                                       onTap: () {
// // // // //                                         setState(() {
// // // // //                                           _showCardNumber = !_showCardNumber;
// // // // //                                         });
// // // // //                                       },
// // // // //                                       child: Text(
// // // // //                                         _showCardNumber
// // // // //                                             ? '4152 5468 9012 3456'
// // // // //                                             : 'Show Number',
// // // // //                                         style: TextStyle(
// // // // //                                             fontSize: 18, color: Colors.black),
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       );
// // // // //                     },
// // // // //                   ),
// // // // //                 ),
// // // // //               const SizedBox(height: 16),
// // // // //               Text(
// // // // //                 'Recent Transactions',
// // // // //                 style: TextStyle(
// // // // //                     fontSize: 18,
// // // // //                     fontWeight: FontWeight.bold,
// // // // //                     color: goldColor),
// // // // //               ),
// // // // //               ListView.builder(
// // // // //                 shrinkWrap:
// // // // //                     true, // Ensures the ListView takes only necessary space
// // // // //                 physics:
// // // // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // // // //                 itemCount: 5, // Example number of transactions
// // // // //                 itemBuilder: (context, index) {
// // // // //                   return ListTile(
// // // // //                     title: Text('Transaction #$index',
// // // // //                         style: TextStyle(color: goldColor)),
// // // // //                     subtitle: Text('Details of transaction',
// // // // //                         style: TextStyle(color: goldColor)),
// // // // //                   );
// // // // //                 },
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //       floatingActionButton: _isMobile()
// // // // //           ? FloatingActionButton(
// // // // //               backgroundColor: goldColor,
// // // // //               onPressed: () async {
// // // // //                 final newCard = await Navigator.push(
// // // // //                   context,
// // // // //                   MaterialPageRoute(builder: (context) => CreateCardPage()),
// // // // //                 );
// // // // //                 if (newCard != null) {
// // // // //                   setState(() {
// // // // //                     cards.add(newCard);
// // // // //                     _animationController.forward(from: 0);
// // // // //                   });
// // // // //                 }
// // // // //               },
// // // // //               child: Icon(Icons.add, color: Colors.black),
// // // // //             )
// // // // //           : null,
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'package:go_router/go_router.dart';
// // // // import 'package:my_new_app/CardDetailsPage.dart';
// // // // import 'package:my_new_app/CreateCardPage.dart';
// // // // // import 'create_card_page.dart'; // Import the CreateCardPage
// // // // // import 'details_page.dart'; // Import the DetailsPage

// // // // class MainPage extends StatefulWidget {
// // // //   const MainPage({super.key});

// // // //   @override
// // // //   _MainPageState createState() => _MainPageState();
// // // // }

// // // // class _MainPageState extends State<MainPage>
// // // //     with SingleTickerProviderStateMixin {
// // // //   bool _showCardNumber = false; // State to toggle card number visibility
// // // //   List<Map<String, dynamic>> cards = []; // List to store created cards
// // // //   late AnimationController _animationController;
// // // //   int _selectedIndex = 0; // To keep track of the selected navigation item
// // // //   int? _selectedCardIndex;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _animationController = AnimationController(
// // // //       duration: const Duration(milliseconds: 500),
// // // //       vsync: this,
// // // //     );
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _animationController.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   bool _isMobile() {
// // // //     final data = MediaQuery.of(context);
// // // //     return data.size.shortestSide < 600;
// // // //   }

// // // //   void _onItemTapped(int index) {
// // // //     setState(() {
// // // //       _selectedIndex = index;
// // // //     });

// // // //     // Handle navigation based on the selected item
// // // //     if (index == 0) {
// // // //       context.go('/MainPage'); // Navigate to MainPage
// // // //     } else if (index == 1) {
// // // //       Navigator.push(
// // // //         context,
// // // //         MaterialPageRoute(builder: (context) => const CreateCardPage()),
// // // //       ).then((newCard) {
// // // //         if (newCard != null) {
// // // //           setState(() {
// // // //             newCard['showDetails'] =
// // // //                 false; // Initialize showDetails to false for new cards
// // // //             cards.add(newCard);
// // // //             _animationController.forward(from: 0);
// // // //           });
// // // //         }
// // // //       });
// // // //     } else if (index == 2) {
// // // //       context.go('/SignInPage'); // Navigate to SignInPage
// // // //     }
// // // //   }

// // // //   List<Map<String, dynamic>> get expiredCards {
// // // //     return cards
// // // //         .where((card) => card['expiryDate'].isBefore(DateTime.now()))
// // // //         .toList();
// // // //   }

// // // //   void _navigateToDetailsPage(Map<String, dynamic> card) {
// // // //     Navigator.push(
// // // //       context,
// // // //       MaterialPageRoute(builder: (context) => CardDetailsPage(card: card)),
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     const Color backgroundColor = Colors.black;
// // // //     const Color goldColor = Color(0xFFE9C575);

// // // //     return Scaffold(
// // // //       backgroundColor: backgroundColor,
// // // //       appBar: AppBar(
// // // //         title: const Text(
// // // //           'Main Page',
// // // //           style: TextStyle(color: goldColor),
// // // //         ),
// // // //         backgroundColor: backgroundColor,
// // // //         elevation: 0,
// // // //         iconTheme: const IconThemeData(color: goldColor),
// // // //       ),
// // // //       drawer: Drawer(
// // // //         backgroundColor: Colors.black,
// // // //         child: ListView(
// // // //           padding: EdgeInsets.zero,
// // // //           children: [
// // // //             DrawerHeader(
// // // //               decoration: BoxDecoration(
// // // //                 color: backgroundColor,
// // // //               ),
// // // //               child: Text(
// // // //                 'Menu',
// // // //                 style: TextStyle(color: goldColor, fontSize: 24),
// // // //               ),
// // // //             ),
// // // //             ListTile(
// // // //               leading: Icon(Icons.logout, color: goldColor),
// // // //               title: Text('Logout', style: TextStyle(color: goldColor)),
// // // //               onTap: () {
// // // //                 context.go('/SignInPage'); // Navigate to SignInPage
// // // //               },
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //       body: SingleChildScrollView(
// // // //         child: Padding(
// // // //           padding: const EdgeInsets.all(16.0),
// // // //           child: Column(
// // // //             children: [
// // // //               // Display Balance
// // // //               Align(
// // // //                 alignment: Alignment.topLeft,
// // // //                 child: Card(
// // // //                   color: backgroundColor,
// // // //                   shape: RoundedRectangleBorder(
// // // //                     borderRadius: BorderRadius.circular(12),
// // // //                   ),
// // // //                   child: Padding(
// // // //                     padding: const EdgeInsets.all(16.0),
// // // //                     child: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text(
// // // //                           'Balance',
// // // //                           style: TextStyle(
// // // //                             color: goldColor,
// // // //                             fontSize: 24,
// // // //                             fontWeight: FontWeight.bold,
// // // //                           ),
// // // //                         ),
// // // //                         const SizedBox(height: 8),
// // // //                         Text(
// // // //                           '\$0.00',
// // // //                           style: TextStyle(
// // // //                             color: goldColor,
// // // //                             fontSize: 36,
// // // //                             fontWeight: FontWeight.bold,
// // // //                           ),
// // // //                         ),
// // // //                         const SizedBox(height: 8),
// // // //                         Text(
// // // //                           '\$20,000.00 available',
// // // //                           style: TextStyle(
// // // //                             color: goldColor,
// // // //                             fontSize: 18,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //               const SizedBox(height: 16),
// // // //               // Display created cards
// // // //               for (int index = 0; index < cards.length; index++)
// // // //                 GestureDetector(
// // // //                   onTap: () {
// // // //                     _navigateToDetailsPage(cards[index]);
// // // //                   },
// // // //                   child: AnimatedBuilder(
// // // //                     animation: _animationController,
// // // //                     builder: (context, child) {
// // // //                       return Transform.scale(
// // // //                         scale: _selectedCardIndex == index ? 1.2 : 1.0,
// // // //                         child: Opacity(
// // // //                           opacity: _animationController.value,
// // // //                           child: Card(
// // // //                             elevation: 4,
// // // //                             shape: RoundedRectangleBorder(
// // // //                               borderRadius: BorderRadius.circular(10),
// // // //                             ),
// // // //                             clipBehavior: Clip.antiAlias,
// // // //                             color: Colors.transparent,
// // // //                             child: Container(
// // // //                               width: double.infinity,
// // // //                               height: 200,
// // // //                               decoration: BoxDecoration(
// // // //                                 color: Colors.transparent,
// // // //                                 image: const DecorationImage(
// // // //                                   image: AssetImage('assets/Images/card-2.png'),
// // // //                                   fit: BoxFit.cover,
// // // //                                 ),
// // // //                               ),
// // // //                               child: Padding(
// // // //                                 padding: const EdgeInsets.all(16.0),
// // // //                                 child: Column(
// // // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                                   mainAxisAlignment: MainAxisAlignment.center,
// // // //                                   children: [
// // // //                                     Text(
// // // //                                       'Name: ${cards[index]['cardHolderName']}',
// // // //                                       style: TextStyle(
// // // //                                         fontSize: 18,
// // // //                                         color: Colors.black,
// // // //                                       ),
// // // //                                     ),
// // // //                                     Text(
// // // //                                       'Amount: ${cards[index]['amount']}',
// // // //                                       style: TextStyle(
// // // //                                         fontSize: 18,
// // // //                                         color: Colors.black,
// // // //                                       ),
// // // //                                     ),
// // // //                                     Text(
// // // //                                       'Type: ${cards[index]['type']}',
// // // //                                       style: TextStyle(
// // // //                                         fontSize: 18,
// // // //                                         color: Colors.black,
// // // //                                       ),
// // // //                                     ),
// // // //                                     Text(
// // // //                                       'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
// // // //                                       style: TextStyle(
// // // //                                         fontSize: 18,
// // // //                                         color: Colors.black,
// // // //                                       ),
// // // //                                     ),
// // // //                                     Text(
// // // //                                       'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
// // // //                                           .split(' ')[0],
// // // //                                       style: TextStyle(
// // // //                                         fontSize: 18,
// // // //                                         color: Colors.black,
// // // //                                       ),
// // // //                                     ),
// // // //                                   ],
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       );
// // // //                     },
// // // //                   ),
// // // //                 ),
// // // //               const SizedBox(height: 16),
// // // //               const Text(
// // // //                 'Recent Transactions',
// // // //                 style: TextStyle(
// // // //                   fontSize: 18,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   color: goldColor,
// // // //                 ),
// // // //               ),
// // // //               ListView.builder(
// // // //                 shrinkWrap: true,
// // // //                 physics: const NeverScrollableScrollPhysics(),
// // // //                 itemCount: 5,
// // // //                 itemBuilder: (context, index) {
// // // //                   return ListTile(
// // // //                     title: Text('Transaction #$index',
// // // //                         style: TextStyle(color: goldColor)),
// // // //                     subtitle: Text('Details of transaction',
// // // //                         style: TextStyle(color: goldColor)),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //               const SizedBox(height: 16),
// // // //               const Text(
// // // //                 'Expired Cards',
// // // //                 style: TextStyle(
// // // //                   fontSize: 18,
// // // //                   fontWeight: FontWeight.bold,
// // // //                   color: Colors.black,
// // // //                 ),
// // // //               ),
// // // //               ListView.builder(
// // // //                 shrinkWrap: true,
// // // //                 physics: const NeverScrollableScrollPhysics(),
// // // //                 itemCount: expiredCards.length,
// // // //                 itemBuilder: (context, index) {
// // // //                   return ListTile(
// // // //                     title: Text(
// // // //                       'Name: ${expiredCards[index]['cardHolderName']}',
// // // //                       style: const TextStyle(
// // // //                         fontSize: 18,
// // // //                         color: Colors.black,
// // // //                       ),
// // // //                     ),
// // // //                     subtitle: Column(
// // // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // // //                       children: [
// // // //                         Text(
// // // //                           'Expired on: ${expiredCards[index]['expiryDate'].toLocal()}'
// // // //                               .split(' ')[0],
// // // //                           style: const TextStyle(
// // // //                             fontSize: 16,
// // // //                             color: Colors.black,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   );
// // // //                 },
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //       bottomNavigationBar: BottomNavigationBar(
// // // //         backgroundColor: backgroundColor,
// // // //         selectedItemColor: goldColor,
// // // //         unselectedItemColor: Colors.white,
// // // //         currentIndex: _selectedIndex,
// // // //         onTap: _onItemTapped,
// // // //         items: const <BottomNavigationBarItem>[
// // // //           BottomNavigationBarItem(
// // // //             icon: Icon(
// // // //               Icons.home,
// // // //               color: goldColor,
// // // //             ),
// // // //             label: 'Home',
// // // //           ),
// // // //           BottomNavigationBarItem(
// // // //             icon: Icon(Icons.add),
// // // //             label: 'Add',
// // // //           ),
// // // //           BottomNavigationBarItem(
// // // //             icon: Icon(Icons.logout),
// // // //             label: 'Logout',
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'package:my_new_app/CardDetailsPage.dart';
// // // import 'package:my_new_app/CreateCardPage.dart';
// // // import 'create_card_page.dart'; // Import the CreateCardPage
// // // import 'card_details_page.dart'; // Import the CardDetailsPage

// // // class MainPage extends StatefulWidget {
// // //   const MainPage({super.key});

// // //   @override
// // //   _MainPageState createState() => _MainPageState();
// // // }

// // // class _MainPageState extends State<MainPage>
// // //     with SingleTickerProviderStateMixin {
// // //   bool _showCardNumber = false; // State to toggle card number visibility
// // //   List<Map<String, dynamic>> cards = []; // List to store created cards
// // //   late AnimationController _animationController;
// // //   int _selectedIndex = 0; // To keep track of the selected navigation item
// // //   int? _selectedCardIndex;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _animationController = AnimationController(
// // //       duration: const Duration(milliseconds: 500),
// // //       vsync: this,
// // //     );
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _animationController.dispose();
// // //     super.dispose();
// // //   }

// // //   bool _isMobile() {
// // //     final data = MediaQuery.of(context);
// // //     return data.size.shortestSide < 600;
// // //   }

// // //   void _onItemTapped(int index) {
// // //     setState(() {
// // //       _selectedIndex = index;
// // //     });

// // //     // Handle navigation based on the selected item
// // //     if (index == 0) {
// // //       // Home action
// // //     } else if (index == 1) {
// // //       Navigator.push(
// // //         context,
// // //         MaterialPageRoute(builder: (context) => const CreateCardPage()),
// // //       ).then((newCard) {
// // //         if (newCard != null) {
// // //           setState(() {
// // //             newCard['showDetails'] =
// // //                 false; // Initialize showDetails to false for new cards
// // //             cards.add(newCard);
// // //             _animationController.forward(from: 0);
// // //           });
// // //         }
// // //       });
// // //     } else if (index == 2 && cards.isNotEmpty) {
// // //       Navigator.push(
// // //         context,
// // //         MaterialPageRoute(
// // //             builder: (context) => CardDetailsPage(
// // //                 card: cards.first)), // Navigate to the first card for example
// // //       );
// // //     }
// // //   }

// // //   List<Map<String, dynamic>> get expiredCards {
// // //     return cards
// // //         .where((card) => card['expiryDate'].isBefore(DateTime.now()))
// // //         .toList();
// // //   }

// // //   void _navigateToDetailsPage(Map<String, dynamic> card) {
// // //     Navigator.push(
// // //       context,
// // //       MaterialPageRoute(builder: (context) => CardDetailsPage(card: card)),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     const Color backgroundColor = Colors.black;
// // //     const Color goldColor = Color(0xFFE9C575);

// // //     return Scaffold(
// // //       backgroundColor: backgroundColor,
// // //       appBar: AppBar(
// // //         title: const Text(
// // //           'Main Page',
// // //           style: TextStyle(color: goldColor),
// // //         ),
// // //         backgroundColor: backgroundColor,
// // //         elevation: 0,
// // //         iconTheme: const IconThemeData(color: goldColor),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             children: [
// // //               // Display Balance
// // //               Align(
// // //                 alignment: Alignment.topLeft,
// // //                 child: Card(
// // //                   color: backgroundColor,
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(12),
// // //                   ),
// // //                   child: Padding(
// // //                     padding: const EdgeInsets.all(16.0),
// // //                     child: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           'Balance',
// // //                           style: TextStyle(
// // //                             color: goldColor,
// // //                             fontSize: 24,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 8),
// // //                         Text(
// // //                           '\$0.00',
// // //                           style: TextStyle(
// // //                             color: goldColor,
// // //                             fontSize: 36,
// // //                             fontWeight: FontWeight.bold,
// // //                           ),
// // //                         ),
// // //                         const SizedBox(height: 8),
// // //                         Text(
// // //                           '\$20,000.00 available',
// // //                           style: TextStyle(
// // //                             color: goldColor,
// // //                             fontSize: 18,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //               const SizedBox(height: 16),
// // //               // Display created cards
// // //               for (int index = 0; index < cards.length; index++)
// // //                 GestureDetector(
// // //                   onTap: () {
// // //                     _navigateToDetailsPage(cards[index]);
// // //                   },
// // //                   child: AnimatedBuilder(
// // //                     animation: _animationController,
// // //                     builder: (context, child) {
// // //                       return Transform.scale(
// // //                         scale: _selectedCardIndex == index ? 1.2 : 1.0,
// // //                         child: Opacity(
// // //                           opacity: _animationController.value,
// // //                           child: Card(
// // //                             elevation: 4,
// // //                             shape: RoundedRectangleBorder(
// // //                               borderRadius: BorderRadius.circular(10),
// // //                             ),
// // //                             clipBehavior: Clip.antiAlias,
// // //                             color: Colors.transparent,
// // //                             child: Container(
// // //                               width: double.infinity,
// // //                               height: 200,
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.transparent,
// // //                                 image: const DecorationImage(
// // //                                   image: AssetImage('assets/Images/card-2.png'),
// // //                                   fit: BoxFit.cover,
// // //                                 ),
// // //                               ),
// // //                               child: Padding(
// // //                                 padding: const EdgeInsets.all(16.0),
// // //                                 child: Column(
// // //                                   crossAxisAlignment: CrossAxisAlignment.start,
// // //                                   mainAxisAlignment: MainAxisAlignment.center,
// // //                                   children: [
// // //                                     Text(
// // //                                       'Name: ${cards[index]['cardHolderName']}',
// // //                                       style: TextStyle(
// // //                                         fontSize: 18,
// // //                                         color: Colors.black,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Amount: ${cards[index]['amount']}',
// // //                                       style: TextStyle(
// // //                                         fontSize: 18,
// // //                                         color: Colors.black,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Type: ${cards[index]['type']}',
// // //                                       style: TextStyle(
// // //                                         fontSize: 18,
// // //                                         color: Colors.black,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
// // //                                       style: TextStyle(
// // //                                         fontSize: 18,
// // //                                         color: Colors.black,
// // //                                       ),
// // //                                     ),
// // //                                     Text(
// // //                                       'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
// // //                                           .split(' ')[0],
// // //                                       style: TextStyle(
// // //                                         fontSize: 18,
// // //                                         color: Colors.black,
// // //                                       ),
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       );
// // //                     },
// // //                   ),
// // //                 ),
// // //               const SizedBox(height: 16),
// // //               const Text(
// // //                 'Recent Transactions',
// // //                 style: TextStyle(
// // //                   fontSize: 18,
// // //                   fontWeight: FontWeight.bold,
// // //                   color: goldColor,
// // //                 ),
// // //               ),
// // //               ListView.builder(
// // //                 shrinkWrap: true,
// // //                 physics: const NeverScrollableScrollPhysics(),
// // //                 itemCount: 5,
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     title: Text('Transaction #$index',
// // //                         style: TextStyle(color: goldColor)),
// // //                     subtitle: Text('Details of transaction',
// // //                         style: TextStyle(color: goldColor)),
// // //                   );
// // //                 },
// // //               ),
// // //               const SizedBox(height: 16),
// // //               const Text(
// // //                 'Expired Cards',
// // //                 style: TextStyle(
// // //                   fontSize: 18,
// // //                   fontWeight: FontWeight.bold,
// // //                   color: Colors.black,
// // //                 ),
// // //               ),
// // //               ListView.builder(
// // //                 shrinkWrap: true,
// // //                 physics: const NeverScrollableScrollPhysics(),
// // //                 itemCount: expiredCards.length,
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     title: Text(
// // //                       'Name: ${expiredCards[index]['cardHolderName']}',
// // //                       style: const TextStyle(
// // //                         fontSize: 18,
// // //                         color: Colors.black,
// // //                       ),
// // //                     ),
// // //                     subtitle: Column(
// // //                       crossAxisAlignment: CrossAxisAlignment.start,
// // //                       children: [
// // //                         Text(
// // //                           'Expired on: ${expiredCards[index]['expiryDate'].toLocal()}'
// // //                               .split(' ')[0],
// // //                           style: const TextStyle(
// // //                             fontSize: 16,
// // //                             color: Colors.black,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   );
// // //                 },
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //       bottomNavigationBar: BottomNavigationBar(
// // //         backgroundColor: backgroundColor,
// // //         selectedItemColor: goldColor,
// // //         unselectedItemColor: goldColor,
// // //         currentIndex: _selectedIndex,
// // //         onTap: _onItemTapped,
// // //         items: const <BottomNavigationBarItem>[
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.home, color: goldColor),
// // //             label: 'Home',
// // //           ),
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.add, color: goldColor),
// // //             label: 'Add',
// // //           ),
// // //           BottomNavigationBarItem(
// // //             icon: Icon(Icons.info, color: goldColor),
// // //             label: 'Details',
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:my_new_app/CardDetailsPage.dart';
// // import 'package:my_new_app/CardHistoryPage.dart';
// // import 'package:my_new_app/CreateCardPage.dart';
// // // import 'create_card_page.dart'; // Import the CreateCardPage
// // // import 'card_details_page.dart'; // Import the CardDetailsPage
// // // import 'history_page.dart'; // Import the HistoryPage

// // class MainPage extends StatefulWidget {
// //   const MainPage({super.key});

// //   @override
// //   _MainPageState createState() => _MainPageState();
// // }

// // class _MainPageState extends State<MainPage>
// //     with SingleTickerProviderStateMixin {
// //   bool _showCardNumber = false; // State to toggle card number visibility
// //   List<Map<String, dynamic>> cards = []; // List to store created cards
// //   late AnimationController _animationController;
// //   int _selectedIndex = 0; // To keep track of the selected navigation item
// //   int? _selectedCardIndex;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _animationController = AnimationController(
// //       duration: const Duration(milliseconds: 500),
// //       vsync: this,
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _animationController.dispose();
// //     super.dispose();
// //   }

// //   bool _isMobile() {
// //     final data = MediaQuery.of(context);
// //     return data.size.shortestSide < 600;
// //   }

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });

// //     // Handle navigation based on the selected item
// //     if (index == 0) {
// //       // Home action: opening drawer
// //       Scaffold.of(context).openDrawer();
// //     } else if (index == 1) {
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(builder: (context) => const CreateCardPage()),
// //       ).then((newCard) {
// //         if (newCard != null) {
// //           setState(() {
// //             newCard['showDetails'] =
// //                 false; // Initialize showDetails to false for new cards
// //             cards.add(newCard);
// //             _animationController.forward(from: 0);
// //           });
// //         }
// //       });
// //     } else if (index == 2) {
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(builder: (context) => HistoryPage(cards: cards)),
// //       );
// //     }
// //   }

// //   List<Map<String, dynamic>> get expiredCards {
// //     return cards
// //         .where((card) => card['expiryDate'].isBefore(DateTime.now()))
// //         .toList();
// //   }

// //   void _navigateToDetailsPage(Map<String, dynamic> card) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(builder: (context) => CardDetailsPage(card: card)),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     const Color backgroundColor = Colors.black;
// //     const Color goldColor = Color(0xFFE9C575);

// //     return Scaffold(
// //       backgroundColor: backgroundColor,
// //       appBar: AppBar(
// //         title: const Text(
// //           'Main Page',
// //           style: TextStyle(color: goldColor),
// //         ),
// //         backgroundColor: backgroundColor,
// //         elevation: 0,
// //         iconTheme: const IconThemeData(color: goldColor),
// //       ),
// //       drawer: Drawer(
// //         backgroundColor: backgroundColor,
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: [
// //             DrawerHeader(
// //               decoration: BoxDecoration(color: backgroundColor),
// //               child: const Text('Menu',
// //                   style: TextStyle(color: goldColor, fontSize: 24)),
// //             ),
// //             ListTile(
// //               leading: const Icon(Icons.logout, color: goldColor),
// //               title: const Text('Logout', style: TextStyle(color: goldColor)),
// //               onTap: () {
// //                 context.go('/SignInPage'); // Navigate to SignInPage
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Column(
// //           children: [
// //             Card(
// //               color: backgroundColor,
// //               shape: RoundedRectangleBorder(
// //                   borderRadius: BorderRadius.circular(12)),
// //               child: Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text('Balance',
// //                         style: TextStyle(
// //                             color: goldColor,
// //                             fontSize: 24,
// //                             fontWeight: FontWeight.bold)),
// //                     const SizedBox(height: 8),
// //                     Text('\$0.00',
// //                         style: TextStyle(
// //                             color: goldColor,
// //                             fontSize: 36,
// //                             fontWeight: FontWeight.bold)),
// //                     const SizedBox(height: 8),
// //                     Text('\$20,000.00 available',
// //                         style: TextStyle(color: goldColor, fontSize: 18)),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 16),
// //             const Text(
// //               'Recent Cards',
// //               style: TextStyle(
// //                 fontSize: 18,
// //                 fontWeight: FontWeight.bold,
// //                 color: goldColor,
// //               ),
// //             ),
// //             Expanded(
// //               child: ListView.builder(
// //                 itemCount: cards.length,
// //                 itemBuilder: (context, index) {
// //                   return GestureDetector(
// //                     onTap: () {
// //                       setState(() {
// //                         _selectedCardIndex = index;
// //                         _showCardNumber = !_showCardNumber;
// //                       });
// //                     },
// //                     onDoubleTap: () => _navigateToDetailsPage(cards[index]),
// //                     child: AnimatedBuilder(
// //                       animation: _animationController,
// //                       builder: (context, child) {
// //                         return Transform.scale(
// //                           scale: _selectedCardIndex == index ? 1.2 : 1.0,
// //                           child: Opacity(
// //                             opacity: _animationController.value,
// //                             child: Card(
// //                               elevation: 4,
// //                               shape: RoundedRectangleBorder(
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               clipBehavior: Clip.antiAlias,
// //                               color: Colors.transparent,
// //                               child: Container(
// //                                 width: double.infinity,
// //                                 height: 200,
// //                                 decoration: BoxDecoration(
// //                                   color: Colors.transparent,
// //                                   image: const DecorationImage(
// //                                     image:
// //                                         AssetImage('assets/Images/card-2.png'),
// //                                     fit: BoxFit.cover,
// //                                   ),
// //                                 ),
// //                                 child: Stack(
// //                                   children: [
// //                                     Padding(
// //                                       padding: const EdgeInsets.all(16.0),
// //                                       child: Column(
// //                                         crossAxisAlignment:
// //                                             CrossAxisAlignment.start,
// //                                         mainAxisAlignment:
// //                                             MainAxisAlignment.center,
// //                                         children: [
// //                                           Text(
// //                                             'Name: ${cards[index]['cardHolderName']}',
// //                                             style: TextStyle(
// //                                               fontSize: 18,
// //                                               color: Colors.black,
// //                                             ),
// //                                           ),
// //                                           Text(
// //                                             'Amount: ${cards[index]['amount']}',
// //                                             style: TextStyle(
// //                                               fontSize: 18,
// //                                               color: Colors.black,
// //                                             ),
// //                                           ),
// //                                           Text(
// //                                             'Type: ${cards[index]['type']}',
// //                                             style: TextStyle(
// //                                               fontSize: 18,
// //                                               color: Colors.black,
// //                                             ),
// //                                           ),
// //                                           Text(
// //                                             'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
// //                                             style: TextStyle(
// //                                               fontSize: 18,
// //                                               color: Colors.black,
// //                                             ),
// //                                           ),
// //                                           Text(
// //                                             'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
// //                                                 .split(' ')[0],
// //                                             style: TextStyle(
// //                                               fontSize: 18,
// //                                               color: Colors.black,
// //                                             ),
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ),
// //                                     Positioned(
// //                                       right: 16.0,
// //                                       bottom: 16.0,
// //                                       child: GestureDetector(
// //                                         onTap: () {
// //                                           setState(() {
// //                                             _showCardNumber = !_showCardNumber;
// //                                           });
// //                                         },
// //                                         child: Text(
// //                                           _showCardNumber
// //                                               ? '4152 5468 9012 3456'
// //                                               : 'Show Number',
// //                                           style: TextStyle(
// //                                             fontSize: 18,
// //                                             color: Colors.black,
// //                                           ),
// //                                         ),
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         );
// //                       },
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //       bottomNavigationBar: BottomNavigationBar(
// //         backgroundColor: backgroundColor,
// //         selectedItemColor: goldColor,
// //         unselectedItemColor: goldColor,
// //         currentIndex: _selectedIndex,
// //         onTap: _onItemTapped,
// //         items: const <BottomNavigationBarItem>[
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.home, color: goldColor),
// //             label: 'Home',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.add, color: goldColor),
// //             label: 'Add',
// //           ),
// //           BottomNavigationBarItem(
// //             icon: Icon(Icons.history, color: goldColor),
// //             label: 'History',
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:my_new_app/CardDetailsPage.dart';
// import 'package:my_new_app/CardHistoryPage.dart';
// import 'package:my_new_app/CreateCardPage.dart';

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   _MainPageState createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage>
//     with SingleTickerProviderStateMixin {
//   bool _showCardNumber = false; // State to toggle card number visibility
//   List<Map<String, dynamic>> cards = []; // List to store created cards
//   late AnimationController _animationController;
//   int _selectedIndex = 0; // To keep track of the selected navigation item
//   int? _selectedCardIndex;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 500),
//       vsync: this,
//     );
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   bool _isMobile() {
//     final data = MediaQuery.of(context);
//     return data.size.shortestSide < 600;
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });

//     // Handle navigation based on the selected item
//     if (index == 0) {
//       // Home action: opening drawer
//       Scaffold.of(context).openDrawer();
//     } else if (index == 1) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => const CreateCardPage()),
//       ).then((newCard) {
//         if (newCard != null) {
//           setState(() {
//             newCard['showDetails'] =
//                 false; // Initialize showDetails to false for new cards
//             cards.add(newCard);
//             _animationController.forward(from: 0);
//           });
//         }
//       });
//     } else if (index == 2) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HistoryPage(cards: cards)),
//       );
//     }
//   }

//   List<Map<String, dynamic>> get expiredCards {
//     return cards
//         .where((card) => card['expiryDate'].isBefore(DateTime.now()))
//         .toList();
//   }

//   void _navigateToDetailsPage(Map<String, dynamic> card) {
//     GoRouter.of(context).go('/mainpage');
//   }

//   @override
//   Widget build(BuildContext context) {
//     const Color backgroundColor = Colors.black;
//     const Color goldColor = Color(0xFFE9C575);

//     return Scaffold(
//       backgroundColor: backgroundColor,
//       appBar: AppBar(
//         title: const Text(
//           'Main Page',
//           style: TextStyle(color: goldColor),
//         ),
//         backgroundColor: backgroundColor,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: goldColor),
//       ),
//       drawer: Drawer(
//         backgroundColor: backgroundColor,
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               decoration: BoxDecoration(color: backgroundColor),
//               child: const Text('Menu',
//                   style: TextStyle(color: goldColor, fontSize: 24)),
//             ),
//             ListTile(
//               leading: const Icon(Icons.logout, color: goldColor),
//               title: const Text('Logout', style: TextStyle(color: goldColor)),
//               onTap: () {
//                 // Navigator.pushReplacementNamed(context, '/SignInPage');
//                 context.go('/SignInPage');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Align(
//               alignment:
//                   Alignment.topLeft, // Align the balance to the top-left corner
//               child: Card(
//                 color: backgroundColor,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text('Balance',
//                           style: TextStyle(
//                               color: goldColor,
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold)),
//                       const SizedBox(height: 8),
//                       Text('\$0.00',
//                           style: TextStyle(
//                               color: goldColor,
//                               fontSize: 36,
//                               fontWeight: FontWeight.bold)),
//                       const SizedBox(height: 8),
//                       // Text('\$20,000.00 available',
//                       //     style: TextStyle(color: goldColor, fontSize: 18)),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               'Recent Cards',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: goldColor,
//               ),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: cards.length,
//                 itemBuilder: (context, index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _selectedCardIndex = index;
//                         _showCardNumber = !_showCardNumber;
//                       });
//                     },
//                     onDoubleTap: () => _navigateToDetailsPage(cards[index]),
//                     child: AnimatedBuilder(
//                       animation: _animationController,
//                       builder: (context, child) {
//                         return Transform.scale(
//                           scale: _selectedCardIndex == index ? 1.2 : 1.0,
//                           child: Opacity(
//                             opacity: _animationController.value,
//                             child: Card(
//                               elevation: 4,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               clipBehavior: Clip.antiAlias,
//                               color: Colors.transparent,
//                               child: Container(
//                                 width: double.infinity,
//                                 height: 200,
//                                 decoration: BoxDecoration(
//                                   color: Colors.transparent,
//                                   image: const DecorationImage(
//                                     image:
//                                         AssetImage('assets/Images/card-2.png'),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(16.0),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         // children: [
//                                         //   Text(
//                                         //     'Name: ${cards[index]['cardHolderName']}',
//                                         //     style: TextStyle(
//                                         //       fontSize: 18,
//                                         //       color: Colors.black,
//                                         //     ),
//                                         //   ),
//                                         //   Text(
//                                         //     'Amount: ${cards[index]['amount']}',
//                                         //     style: TextStyle(
//                                         //       fontSize: 18,
//                                         //       color: Colors.black,
//                                         //     ),
//                                         //   ),
//                                         //   Text(
//                                         //     'Type: ${cards[index]['type']}',
//                                         //     style: TextStyle(
//                                         //       fontSize: 18,
//                                         //       color: Colors.black,
//                                         //     ),
//                                         //   ),
//                                         //   Text(
//                                         //     'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
//                                         //     style: TextStyle(
//                                         //       fontSize: 18,
//                                         //       color: Colors.black,
//                                         //     ),
//                                         //   ),
//                                         //   Text(
//                                         //     'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
//                                         //         .split(' ')[0],
//                                         //     style: TextStyle(
//                                         //       fontSize: 18,
//                                         //       color: Colors.black,
//                                         //     ),
//                                         //   ),
//                                         // ],
//                                       ),
//                                     ),
//                                     Positioned(
//                                       left: 32.0,
//                                       bottom: 16.0,
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             _showCardNumber = !_showCardNumber;
//                                           });
//                                         },
//                                         child: Text(
//                                           _showCardNumber
//                                               ? '4152 5468 9012 3456'
//                                               : 'Show Number',
//                                           style: TextStyle(
//                                             fontSize: 18,
//                                             color: Colors.black,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: backgroundColor,
//         selectedItemColor: goldColor,
//         unselectedItemColor: goldColor,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: goldColor),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.add, color: goldColor),
//             label: 'Add',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history, color: goldColor),
//             label: 'History',
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_new_app/CardDetailsPage.dart';
import 'package:my_new_app/CardHistoryPage.dart';
import 'package:my_new_app/CreateCardPage.dart';

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
  int _selectedIndex = 0; // To keep track of the selected navigation item
  int? _selectedCardIndex;

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

  bool _isMobile() {
    final data = MediaQuery.of(context);
    return data.size.shortestSide < 600;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Scaffold.of(context).openDrawer();
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CreateCardPage()),
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
        MaterialPageRoute(builder: (context) => HistoryPage(cards: cards)),
      );
    }
  }

  List<Map<String, dynamic>> get expiredCards {
    return cards
        .where((card) => card['expiryDate'].isBefore(DateTime.now()))
        .toList();
  }

  void _navigateToDetailsPage(Map<String, dynamic> card) {
    GoRouter.of(context).go('/mainpage');
  }

  @override
  Widget build(BuildContext context) {
    const Color backgroundColor = Colors.black;
    const Color goldColor = Color(0xFFE9C575);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Home Page',
          style: TextStyle(color: goldColor),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: goldColor),
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
              title: const Text('Logout', style: TextStyle(color: goldColor)),
              onTap: () {
                context.go('/SignInPage');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Card(
                color: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Balance',
                          style: TextStyle(
                              color: goldColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text('\$0.00',
                          style: TextStyle(
                              color: goldColor,
                              fontSize: 36,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Recent Cards',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: goldColor,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: cards.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCardIndex = index;
                        _showCardNumber = !_showCardNumber;
                      });
                    },
                    onDoubleTap: () => _navigateToDetailsPage(cards[index]),
                    child: AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _selectedCardIndex == index ? 1.2 : 1.0,
                          child: Opacity(
                            opacity: _animationController.value,
                            child: Card(
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
                                        'Name: ${cards[index]['cardHolderName'] ?? 'Unknown'}', // fiexd for now we need to change it
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      left: 32.0,
                                      bottom: 16.0,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _showCardNumber = !_showCardNumber;
                                          });
                                        },
                                        child: Text(
                                          _showCardNumber
                                              ? '4152 5468 9012 3456'
                                              : 'Show Number',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
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
}
