import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, // Sets the background color of the page
        appBar: AppBar(
          title: Text(
            'Main Page ',
            style: TextStyle(
              fontWeight: FontWeight.bold, // Makes the text bold
            ),
          ),
        ),
        body: SingleChildScrollView(
            // Makes the body scrollable in case of overflow
            // Make the page scrollable
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Total Balance Card
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                clipBehavior: Clip
                    .antiAlias, // Ensures the image fits within the card's rounded corners

                child: Container(
                  width: 350, // Adjust the width to resemble a credit card size
                  height:
                      200, // Adjust the height to resemble a credit card size
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/Images/card.png'), // Background image
                      fit: BoxFit
                          .cover, // Ensures the image covers the entire card
                    ),
                    borderRadius: BorderRadius.circular(
                        10), // Rounded corners for the image
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text(
                          'Total Balance',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        subtitle: Text(
                          'KD 1000', // Example total balance
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                //  Column(// Added Column here
                //     children: [
                //   Image.asset(
                //     'assets/Images/card.png',
                //     fit: BoxFit.cover,
                //   ),
                //   ListTile(
                //     title: Text(
                //       'Total Balance',
                //       style:
                //           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //     ),
                //     subtitle: Text(
                //       'KD 1000', // Example total balance
                //       style:
                //           TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                //     ),
                //   ),
                // ]),
              ),
              SizedBox(height: 16),

              // Account ****556 Card with Balance
              Card(
                elevation: 4,
                color:
                    Color(0xFF01A1E4), // Background color for the account card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    'Account ****556',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'KD 1000', // Display account balance here
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Visa Account ****345 Card with Balance
              Card(
                elevation: 4,
                color: Color(0xFF016CAC), // Background color for the visa card
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: Text(
                    'Visa Account ****345',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'KD 2,500', // Display visa account balance here
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        )));
  }
}
