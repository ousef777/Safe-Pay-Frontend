// import 'package:flutter/material.dart';

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white, // Sets the background color of the page
//         appBar: AppBar(
//           title: Text(
//             'Main Page ',
//             style: TextStyle(
//               fontWeight: FontWeight.bold, // Makes the text bold
//             ),
//           ),
//         ),
//         body: SingleChildScrollView(
//             // Makes the body scrollable in case of overflow
//             // Make the page scrollable
//             child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               // Total Balance Card
//               Card(
//                 elevation: 4,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10), // Rounded corners
//                 ),
//                 clipBehavior: Clip
//                     .antiAlias, // Ensures the image fits within the card's rounded corners

//                 child: Container(
//                   width: 350, // Adjust the width to resemble a credit card size
//                   height:
//                       200, // Adjust the height to resemble a credit card size
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                           'assets/Images/card.png'), // Background image
//                       fit: BoxFit
//                           .cover, // Ensures the image covers the entire card
//                     ),
//                     borderRadius: BorderRadius.circular(
//                         10), // Rounded corners for the image
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         title: Text(
//                           'Total Balance',
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                         subtitle: Text(
//                           'KD 1000', // Example total balance
//                           style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 //  Column(// Added Column here
//                 //     children: [
//                 //   Image.asset(
//                 //     'assets/Images/card.png',
//                 //     fit: BoxFit.cover,
//                 //   ),
//                 //   ListTile(
//                 //     title: Text(
//                 //       'Total Balance',
//                 //       style:
//                 //           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 //     ),
//                 //     subtitle: Text(
//                 //       'KD 1000', // Example total balance
//                 //       style:
//                 //           TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//                 //     ),
//                 //   ),
//                 // ]),
//               ),
//               SizedBox(height: 16),

//               // Account ****556 Card with Balance
//               Card(
//                 elevation: 4,
//                 color:
//                     Color(0xFF01A1E4), // Background color for the account card
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: ListTile(
//                   title: Text(
//                     'Account ****556',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   subtitle: Text(
//                     'KD 1000', // Display account balance here
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),

//               // Visa Account ****345 Card with Balance
//               Card(
//                 elevation: 4,
//                 color: Color(0xFF016CAC), // Background color for the visa card
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: ListTile(
//                   title: Text(
//                     'Visa Account ****345',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                   subtitle: Text(
//                     'KD 2,500', // Display visa account balance here
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 16),
//             ],
//           ),
//         )));
//   }
// }
// // // // // import 'package:flutter/material.dart';

// // // // // class MainPage extends StatelessWidget {
// // // // //   const MainPage({Key? key}) : super(key: key);

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         title: const Text('Main Page'),
// // // // //       ),
// // // // //       body: Center(
// // // // //         child: Text(
// // // // //           'Welcome to the Main Page!',
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }

// // // // //_______________

// // // // import 'package:flutter/material.dart';

// // // // class MainPage extends StatelessWidget {
// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //         backgroundColor: Colors.white, // Sets the background color of the page
// // // //         appBar: AppBar(
// // // //           title: Text(
// // // //             'Main Page ',
// // // //             style: TextStyle(
// // // //               fontWeight: FontWeight.bold, // Makes the text bold
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         body: SingleChildScrollView(
// // // //             // Makes the body scrollable in case of overflow
// // // //             // Make the page scrollable
// // // //             child: Padding(
// // // //           padding: const EdgeInsets.all(16.0),
// // // //           child: Column(
// // // //             children: [
// // // //               // Total Balance Card
// // // //               Card(
// // // //                 elevation: 4,
// // // //                 shape: RoundedRectangleBorder(
// // // //                   borderRadius: BorderRadius.circular(10), // Rounded corners
// // // //                 ),
// // // //                 clipBehavior: Clip
// // // //                     .antiAlias, // Ensures the image fits within the card's rounded corners

// // // //                 child: Container(
// // // //                   width: 350, // Adjust the width to resemble a credit card size
// // // //                   height:
// // // //                       200, // Adjust the height to resemble a credit card size
// // // //                   decoration: BoxDecoration(
// // // //                     image: DecorationImage(
// // // //                       image: AssetImage(
// // // //                           'assets/Images/card.png'), // Background image
// // // //                       fit: BoxFit
// // // //                           .cover, // Ensures the image covers the entire card
// // // //                     ),
// // // //                     borderRadius: BorderRadius.circular(
// // // //                         10), // Rounded corners for the image
// // // //                   ),
// // // //                   child: Column(
// // // //                     mainAxisAlignment: MainAxisAlignment.center,
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       ListTile(
// // // //                         title: Text(
// // // //                           'Total Balance',
// // // //                           style: TextStyle(
// // // //                               fontSize: 18,
// // // //                               fontWeight: FontWeight.bold,
// // // //                               color: Colors.white),
// // // //                         ),
// // // //                         subtitle: Text(
// // // //                           'KD 1000', // Example total balance
// // // //                           style: TextStyle(
// // // //                               fontSize: 24,
// // // //                               fontWeight: FontWeight.w600,
// // // //                               color: Colors.white),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //                 //  Column(// Added Column here
// // // //                 //     children: [
// // // //                 //   Image.asset(
// // // //                 //     'assets/Images/card.png',
// // // //                 //     fit: BoxFit.cover,
// // // //                 //   ),
// // // //                 //   ListTile(
// // // //                 //     title: Text(
// // // //                 //       'Total Balance',
// // // //                 //       style:
// // // //                 //           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// // // //                 //     ),
// // // //                 //     subtitle: Text(
// // // //                 //       'KD 1000', // Example total balance
// // // //                 //       style:
// // // //                 //           TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
// // // //                 //     ),
// // // //                 //   ),
// // // //                 // ]),
// // // //               ),
// // // //               SizedBox(height: 16),

// // // //               // Account ****556 Card with Balance
// // // //               Card(
// // // //                 elevation: 4,
// // // //                 color:
// // // //                     Color(0xFF01A1E4), // Background color for the account card
// // // //                 shape: RoundedRectangleBorder(
// // // //                   borderRadius: BorderRadius.circular(10),
// // // //                 ),
// // // //                 child: ListTile(
// // // //                   title: Text(
// // // //                     'Account ****556',
// // // //                     style: TextStyle(
// // // //                       fontSize: 18,
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                     ),
// // // //                   ),
// // // //                   subtitle: Text(
// // // //                     'KD 1000', // Display account balance here
// // // //                     style: TextStyle(
// // // //                       fontSize: 24,
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //               SizedBox(height: 16),

// // // //               // Visa Account ****345 Card with Balance
// // // //               Card(
// // // //                 elevation: 4,
// // // //                 color: Color(0xFF016CAC), // Background color for the visa card
// // // //                 shape: RoundedRectangleBorder(
// // // //                   borderRadius: BorderRadius.circular(10),
// // // //                 ),
// // // //                 child: ListTile(
// // // //                   title: Text(
// // // //                     'Visa Account ****345',
// // // //                     style: TextStyle(
// // // //                       fontSize: 18,
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                     ),
// // // //                   ),
// // // //                   subtitle: Text(
// // // //                     'KD 2,500', // Display visa account balance here
// // // //                     style: TextStyle(
// // // //                       fontSize: 24,
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //               SizedBox(height: 16),
// // // //             ],
// // // //           ),
// // // //         )));
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class MainPage extends StatefulWidget {
// // //   const MainPage({Key? key}) : super(key: key);

// // //   @override
// // //   _MainPageState createState() => _MainPageState();
// // // }

// // // class _MainPageState extends State<MainPage> {
// // //   bool _showCardNumber = false; // State to toggle card number visibility

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // Define colors based on SignInPage styling
// // //     const Color goldColor = Color(0xFFE9C575);
// // //     const Color backgroundColor = Colors.black;

// // //     return Scaffold(
// // //       backgroundColor: backgroundColor,
// // //       appBar: AppBar(
// // //         title: Text('Main Page',
// // //             style: TextStyle(fontWeight: FontWeight.bold, color: goldColor)),
// // //         backgroundColor: backgroundColor,
// // //         elevation: 0,
// // //         iconTheme: IconThemeData(color: goldColor),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             children: [
// // //               GestureDetector(
// // //                 onTap: () {
// // //                   setState(() {
// // //                     _showCardNumber =
// // //                         !_showCardNumber; // Toggle card number visibility
// // //                   });
// // //                 },
// // //                 child: Card(
// // //                   elevation: 4,
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                   clipBehavior: Clip.antiAlias,
// // //                   color: Colors
// // //                       .transparent, // Set the card background to transparent
// // //                   child: Container(
// // //                     width: double.infinity,
// // //                     height: 200,
// // //                     decoration: BoxDecoration(
// // //                       color: Colors
// // //                           .transparent, // Set the container background to transparent
// // //                       image: const DecorationImage(
// // //                         image: AssetImage('assets/Images/card.png'),
// // //                         fit: BoxFit.cover,
// // //                       ),
// // //                       borderRadius: BorderRadius.circular(10),
// // //                     ),
// // //                     child: Stack(
// // //                       children: [
// // //                         Column(
// // //                           mainAxisAlignment: MainAxisAlignment.center,
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Padding(
// // //                               padding: const EdgeInsets.only(left: 16.0),
// // //                               child: ListTile(
// // //                                 title: Text(
// // //                                   'Total Balance',
// // //                                   style: TextStyle(
// // //                                       fontSize: 18,
// // //                                       fontWeight: FontWeight.bold,
// // //                                       color: Colors.white),
// // //                                 ),
// // //                                 subtitle: Text(
// // //                                   'KD 1000', // Example total balance
// // //                                   style: TextStyle(
// // //                                       fontSize: 24,
// // //                                       fontWeight: FontWeight.w600,
// // //                                       color: Colors.white),
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         if (_showCardNumber)
// // //                           Positioned(
// // //                             left: 16.0, // Align the number to the left
// // //                             bottom: 16.0,
// // //                             child: Text(
// // //                               '4152 5468 9012 3456', // Example card number starting with 415254
// // //                               style:
// // //                                   TextStyle(fontSize: 18, color: Colors.white),
// // //                             ),
// // //                           ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Example image card
// // //               Card(
// // //                 elevation: 4,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 clipBehavior: Clip.antiAlias,
// // //                 color: Colors
// // //                     .transparent, // Set the card background to transparent
// // //                 child: Container(
// // //                   width: double.infinity,
// // //                   height: 200,
// // //                   decoration: BoxDecoration(
// // //                     color: Colors
// // //                         .transparent, // Set the container background to transparent
// // //                     image: DecorationImage(
// // //                       image: AssetImage(
// // //                           'assets/Images/card.png'), // Replace with another card image
// // //                       fit: BoxFit.cover,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Example image card
// // //               Card(
// // //                 elevation: 4,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 clipBehavior: Clip.antiAlias,
// // //                 color: Colors
// // //                     .transparent, // Set the card background to transparent
// // //                 child: Container(
// // //                   width: double.infinity,
// // //                   height: 200,
// // //                   decoration: BoxDecoration(
// // //                     color: Colors
// // //                         .transparent, // Set the container background to transparent
// // //                     image: DecorationImage(
// // //                       image: AssetImage(
// // //                           'assets/Images/card.png'), // Replace with another card image
// // //                       fit: BoxFit.cover,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Transaction section
// // //               Text(
// // //                 'Recent Transactions',
// // //                 style: TextStyle(
// // //                     fontSize: 18,
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.white),
// // //               ),
// // //               ListView.builder(
// // //                 shrinkWrap:
// // //                     true, // Ensures the ListView takes only necessary space
// // //                 physics:
// // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // //                 itemCount: 5, // Example number of transactions
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     title: Text('Transaction #$index',
// // //                         style: TextStyle(color: Colors.white)),
// // //                     subtitle: Text('Details of transaction',
// // //                         style: TextStyle(color: Colors.white70)),
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
// // //         unselectedItemColor: Colors.grey,
// // //         items: const [
// // //           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Card'),
// // //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// // //         ],
// // //         onTap: (index) {
// // //           // Handle bottom navigation bar taps
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // //______________________________________-

// // // import 'package:flutter/material.dart';
// // // import 'package:go_router/go_router.dart';

// // // class MainPage extends StatefulWidget {
// // //   const MainPage({Key? key}) : super(key: key);

// // //   @override
// // //   _MainPageState createState() => _MainPageState();
// // // }

// // // class _MainPageState extends State<MainPage> {
// // //   bool _showCardNumber = false; // State to toggle card number visibility

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // Define colors based on SignInPage styling
// // //     const Color goldColor = Color(0xFFE9C575);
// // //     const Color backgroundColor = Colors.black;

// // //     return Scaffold(
// // //       backgroundColor: backgroundColor,
// // //       appBar: AppBar(
// // //         title: Text(
// // //           'Main Page',
// // //           style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
// // //         ),
// // //         backgroundColor: backgroundColor,
// // //         elevation: 0,
// // //         iconTheme: IconThemeData(color: goldColor),
// // //       ),
// // //       drawer: Drawer(
// // //         child: ListView(
// // //           padding: EdgeInsets.zero,
// // //           children: [
// // //             DrawerHeader(
// // //               decoration: BoxDecoration(
// // //                 color: backgroundColor,
// // //               ),
// // //               child: Text(
// // //                 'Menu',
// // //                 style: TextStyle(color: goldColor, fontSize: 24),
// // //               ),
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.home, color: goldColor),
// // //               title: Text('Home', style: TextStyle(color: goldColor)),
// // //               onTap: () {
// // //                 context.go('/MainPage'); // Navigate to MainPage
// // //               },
// // //             ),
// // //             ListTile(
// // //               leading: Icon(Icons.logout, color: goldColor),
// // //               title: Text('Logout', style: TextStyle(color: goldColor)),
// // //               onTap: () {
// // //                 context.go('/SignInPage'); // Navigate to SignInPage
// // //               },
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //       body: SingleChildScrollView(
// // //         child: Padding(
// // //           padding: const EdgeInsets.all(16.0),
// // //           child: Column(
// // //             children: [
// // //               GestureDetector(
// // //                 onTap: () {
// // //                   setState(() {
// // //                     _showCardNumber =
// // //                         !_showCardNumber; // Toggle card number visibility
// // //                   });
// // //                 },
// // //                 child: Card(
// // //                   elevation: 4,
// // //                   shape: RoundedRectangleBorder(
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                   clipBehavior: Clip.antiAlias,
// // //                   color: Colors
// // //                       .transparent, // Set the card background to transparent
// // //                   child: Container(
// // //                     width: double.infinity,
// // //                     height: 200,
// // //                     decoration: BoxDecoration(
// // //                       color: Colors
// // //                           .transparent, // Set the container background to transparent
// // //                       image: const DecorationImage(
// // //                         image: AssetImage('assets/Images/card.png'),
// // //                         fit: BoxFit.cover,
// // //                       ),
// // //                       borderRadius: BorderRadius.circular(10),
// // //                     ),
// // //                     child: Stack(
// // //                       children: [
// // //                         Column(
// // //                           mainAxisAlignment: MainAxisAlignment.center,
// // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // //                           children: [
// // //                             Padding(
// // //                               padding: const EdgeInsets.only(left: 16.0),
// // //                               child: ListTile(
// // //                                 title: Text(
// // //                                   'Total Balance',
// // //                                   style: TextStyle(
// // //                                       fontSize: 18,
// // //                                       fontWeight: FontWeight.bold,
// // //                                       color: Colors.white),
// // //                                 ),
// // //                                 subtitle: Text(
// // //                                   'KD 1000', // Example total balance
// // //                                   style: TextStyle(
// // //                                       fontSize: 24,
// // //                                       fontWeight: FontWeight.w600,
// // //                                       color: Colors.white),
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                         if (_showCardNumber)
// // //                           Positioned(
// // //                             left: 16.0, // Align the number to the left
// // //                             bottom: 16.0,
// // //                             child: Text(
// // //                               '4152 5468 9012 3456', // Example card number starting with 415254
// // //                               style:
// // //                                   TextStyle(fontSize: 18, color: Colors.white),
// // //                             ),
// // //                           ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Example image card
// // //               Card(
// // //                 elevation: 4,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 clipBehavior: Clip.antiAlias,
// // //                 color: Colors
// // //                     .transparent, // Set the card background to transparent
// // //                 child: Container(
// // //                   width: double.infinity,
// // //                   height: 200,
// // //                   decoration: BoxDecoration(
// // //                     color: Colors
// // //                         .transparent, // Set the container background to transparent
// // //                     image: DecorationImage(
// // //                       image: AssetImage(
// // //                           'assets/Images/card2.png'), // Replace with another card image
// // //                       fit: BoxFit.cover,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Example image card
// // //               Card(
// // //                 elevation: 4,
// // //                 shape: RoundedRectangleBorder(
// // //                   borderRadius: BorderRadius.circular(10),
// // //                 ),
// // //                 clipBehavior: Clip.antiAlias,
// // //                 color: Colors
// // //                     .transparent, // Set the card background to transparent
// // //                 child: Container(
// // //                   width: double.infinity,
// // //                   height: 200,
// // //                   decoration: BoxDecoration(
// // //                     color: Colors
// // //                         .transparent, // Set the container background to transparent
// // //                     image: DecorationImage(
// // //                       image: AssetImage(
// // //                           'assets/Images/card3.png'), // Replace with another card image
// // //                       fit: BoxFit.cover,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(10),
// // //                   ),
// // //                 ),
// // //               ),
// // //               SizedBox(height: 16),

// // //               // Transaction section
// // //               Text(
// // //                 'Recent Transactions',
// // //                 style: TextStyle(
// // //                     fontSize: 18,
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.white),
// // //               ),
// // //               ListView.builder(
// // //                 shrinkWrap:
// // //                     true, // Ensures the ListView takes only necessary space
// // //                 physics:
// // //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// // //                 itemCount: 5, // Example number of transactions
// // //                 itemBuilder: (context, index) {
// // //                   return ListTile(
// // //                     title: Text('Transaction #$index',
// // //                         style: TextStyle(color: Colors.white)),
// // //                     subtitle: Text('Details of transaction',
// // //                         style: TextStyle(color: Colors.white70)),
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
// // //         unselectedItemColor: Colors.grey,
// // //         items: const [
// // //           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Card'),
// // //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// // //         ],
// // //         onTap: (index) {
// // //           // Handle bottom navigation bar taps
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';
// // import 'package:my_new_app/CreateCardPage.dart';
// // // import 'create_card_page.dart'; // Import the CreateCardPage

// // class MainPage extends StatefulWidget {
// //   const MainPage({Key? key}) : super(key: key);

// //   @override
// //   _MainPageState createState() => _MainPageState();
// // }

// // class _MainPageState extends State<MainPage>
// //     with SingleTickerProviderStateMixin {
// //   bool _showCardNumber = false; // State to toggle card number visibility
// //   List<Map<String, dynamic>> cards = []; // List to store created cards
// //   late AnimationController _animationController;

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

// //   @override
// //   Widget build(BuildContext context) {
// //     // Define colors based on SignInPage styling
// //     const Color goldColor = Color(0xFFE9C575);
// //     const Color backgroundColor = Colors.black;

// //     return Scaffold(
// //       backgroundColor: backgroundColor,
// //       appBar: AppBar(
// //         title: Text(
// //           'Main Page',
// //           style: TextStyle(fontWeight: FontWeight.bold, color: goldColor),
// //         ),
// //         backgroundColor: backgroundColor,
// //         elevation: 0,
// //         iconTheme: IconThemeData(color: goldColor),
// //       ),
// //       drawer: Drawer(
// //         child: ListView(
// //           padding: EdgeInsets.zero,
// //           children: [
// //             DrawerHeader(
// //               decoration: BoxDecoration(
// //                 color: backgroundColor,
// //               ),
// //               child: Text(
// //                 'Menu',
// //                 style: TextStyle(color: goldColor, fontSize: 24),
// //               ),
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.home, color: goldColor),
// //               title: Text('Home', style: TextStyle(color: goldColor)),
// //               onTap: () {
// //                 context.go('/MainPage'); // Navigate to MainPage
// //               },
// //             ),
// //             ListTile(
// //               leading: Icon(Icons.logout, color: goldColor),
// //               title: Text('Logout', style: TextStyle(color: goldColor)),
// //               onTap: () {
// //                 context.go('/SignInPage'); // Navigate to SignInPage
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //       body: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             children: [
// //               // Display created cards
// //               for (var card in cards)
// //                 FadeTransition(
// //                   opacity: _animationController,
// //                   child: Card(
// //                     elevation: 4,
// //                     shape: RoundedRectangleBorder(
// //                       borderRadius: BorderRadius.circular(10),
// //                     ),
// //                     clipBehavior: Clip.antiAlias,
// //                     color: Colors
// //                         .transparent, // Set the card background to transparent
// //                     child: Container(
// //                       width: double.infinity,
// //                       height: 200,
// //                       decoration: BoxDecoration(
// //                         color: Colors
// //                             .transparent, // Set the container background to transparent
// //                         image: DecorationImage(
// //                           image: AssetImage(
// //                               'assets/Images/card.png'), // Replace with your custom card image path
// //                           fit: BoxFit.cover,
// //                         ),
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                       child: Stack(
// //                         children: [
// //                           Padding(
// //                             padding: const EdgeInsets.all(16.0),
// //                             child: Column(
// //                               crossAxisAlignment: CrossAxisAlignment.start,
// //                               mainAxisAlignment: MainAxisAlignment.center,
// //                               children: [
// //                                 Text(
// //                                   'Name: ${card['name']}',
// //                                   style: TextStyle(
// //                                       fontSize: 18,
// //                                       fontWeight: FontWeight.bold,
// //                                       color: Colors.white),
// //                                 ),
// //                                 Text(
// //                                   'Amount: ${card['amount']}',
// //                                   style: TextStyle(
// //                                       fontSize: 16, color: Colors.white),
// //                                 ),
// //                                 Text(
// //                                   'Type: ${card['type']}',
// //                                   style: TextStyle(
// //                                       fontSize: 16, color: Colors.white),
// //                                 ),
// //                                 Text(
// //                                   'Withdrawal Limit: ${card['withdrawalLimit']}',
// //                                   style: TextStyle(
// //                                       fontSize: 16, color: Colors.white),
// //                                 ),
// //                                 Text(
// //                                   'Expiry Date: ${card['expiryDate'].toLocal()}'
// //                                       .split(' ')[0], // Show expiry date
// //                                   style: TextStyle(
// //                                       fontSize: 16, color: Colors.white),
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                           Positioned(
// //                             right: 16.0, // Align the number to the right
// //                             bottom: 16.0,
// //                             child: GestureDetector(
// //                               onTap: () {
// //                                 setState(() {
// //                                   _showCardNumber = !_showCardNumber;
// //                                 });
// //                               },
// //                               child: Text(
// //                                 _showCardNumber
// //                                     ? '4152 5468 9012 3456'
// //                                     : 'Show Number',
// //                                 style: TextStyle(
// //                                     fontSize: 18, color: Colors.white),
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               const SizedBox(height: 16),
// //               Text(
// //                 'Recent Transactions',
// //                 style: TextStyle(
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white),
// //               ),
// //               ListView.builder(
// //                 shrinkWrap:
// //                     true, // Ensures the ListView takes only necessary space
// //                 physics:
// //                     NeverScrollableScrollPhysics(), // Disable ListView scrolling
// //                 itemCount: 5, // Example number of transactions
// //                 itemBuilder: (context, index) {
// //                   return ListTile(
// //                     title: Text('Transaction #$index',
// //                         style: TextStyle(color: Colors.white)),
// //                     subtitle: Text('Details of transaction',
// //                         style: TextStyle(color: Colors.white70)),
// //                   );
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         backgroundColor: goldColor,
// //         onPressed: () async {
// //           final newCard = await Navigator.push(
// //             context,
// //             MaterialPageRoute(builder: (context) => CreateCardPage()),
// //           );
// //           if (newCard != null) {
// //             setState(() {
// //               cards.add(newCard);
// //               _animationController.forward(from: 1);
// //             });
// //           }
// //         },
// //         child: Icon(Icons.add, color: Colors.black),
// //       ),
// //     );
// //   }
// // }

import 'package:Frontend/pages/CreateCardPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:my_new_app/CreateCardPage.dart';
// import 'create_card_page.dart'; // Import the CreateCardPage

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  bool _showCardNumber = false; // State to toggle card number visibility
  List<Map<String, dynamic>> cards = []; // List to store created cards
  late AnimationController _animationController;
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: backgroundColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(color: goldColor, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: goldColor),
              title: Text('Home', style: TextStyle(color: goldColor)),
              onTap: () {
                context.go('/MainPage'); // Navigate to MainPage
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: goldColor),
              title: Text('Logout', style: TextStyle(color: goldColor)),
              onTap: () {
                context.go('/SignInPage'); // Navigate to SignInPage
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Display created cards
              for (int index = 0; index < cards.length; index++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCardIndex = index;
                      _animationController.forward(from: 0);
                    });
                  },
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
                            color: Colors
                                .transparent, // Set the card background to transparent
                            child: Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors
                                    .transparent, // Set the container background to transparent
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/Images/card.png'), // Replace with your custom card image path
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Name: ${cards[index]['cardHolderName']}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Amount: ${cards[index]['amount']}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Type: ${cards[index]['type']}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Withdrawal Limit: ${cards[index]['withdrawalLimit']}',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Expiry Date: ${cards[index]['expiryDate'].toLocal()}'
                                              .split(
                                                  ' ')[0], // Show expiry date
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    right:
                                        16.0, // Align the number to the right
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
                                            fontSize: 18, color: Colors.white),
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
                ),
              const SizedBox(height: 16),
              Text(
                'Recent Transactions',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: goldColor),
              ),
              ListView.builder(
                shrinkWrap:
                    true, // Ensures the ListView takes only necessary space
                physics:
                    NeverScrollableScrollPhysics(), // Disable ListView scrolling
                itemCount: 5, // Example number of transactions
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Transaction #$index',
                        style: TextStyle(color: goldColor)),
                    subtitle: Text('Details of transaction',
                        style: TextStyle(color: goldColor)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _isMobile()
          ? FloatingActionButton(
              backgroundColor: goldColor,
              onPressed: () async {
                final newCard = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateCardPage()),
                );
                if (newCard != null) {
                  setState(() {
                    cards.add(newCard);
                    _animationController.forward(from: 0);
                  });
                }
              },
              child: Icon(Icons.add, color: Colors.black),
            )
          : null,
    );
  }
}
