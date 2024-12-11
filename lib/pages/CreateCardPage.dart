import 'package:Frontend/models/card.dart';
import 'package:Frontend/providers/card_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:math';

import 'package:provider/provider.dart';

class CreateCardPage extends StatefulWidget {
  @override
  _CreateCardPageState createState() => _CreateCardPageState();
}

class _CreateCardPageState extends State<CreateCardPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final TextEditingController withdrawalLimitController =
      TextEditingController();
  bool isOneTimeUse = true; // Default selection
  DateTime expiryDate = DateTime.now().add(Duration(days: 1));
  String cardNumber = '';

  void generateCardNumber() {
    final fixedDigits = '415254'; // First 6 fixed digits
    final randomDigits =
        List<int>.generate(10, (_) => Random().nextInt(10)).join('');
    setState(() {
      cardNumber = '$fixedDigits$randomDigits';
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color goldColor = Color(0xFFE9C575);
    const Color backgroundColor = Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Card',
          style: TextStyle(color: goldColor),
        ),
        backgroundColor: backgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: goldColor),
      ),
      body: Container(
        color: backgroundColor,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nameController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Card Title',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter the title',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.person, color: goldColor),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) return "Please enter a title";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                // TextFormField(
                //   controller: amountController,
                //   style: TextStyle(
                //       color: goldColor), // Ensures the entered text is gold
                //   decoration: InputDecoration(
                //     labelText: 'Amount of Charge',
                //     labelStyle: TextStyle(color: goldColor),
                //     hintText: 'Enter the amount',
                //     hintStyle: TextStyle(
                //         color: goldColor), // Ensures the hint text is gold
                //     filled: true,
                //     fillColor: Colors.white.withOpacity(0.1),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(12.0),
                //     ),
                //     prefixIcon: Icon(Icons.attach_money, color: goldColor),
                //   ),
                //   keyboardType: TextInputType.number,
                //   validator: (value) {
                //     if (value!.isEmpty) return "Please enter an amount";
                //     if (double.tryParse(value) == null) {
                //       return "Please enter a valid number";
                //     }
                //     return null;
                //   },
                // ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Card Type',
                      style: TextStyle(color: goldColor, fontSize: 18),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: isOneTimeUse,
                          onChanged: (bool? value) {
                            setState(() {
                              isOneTimeUse = value!;
                              expiryDate = DateTime
                                  .now(); // One-time use cards don't have an expiry date
                            });
                          },
                          activeColor: goldColor,
                        ),
                        Text(
                          'One-time use',
                          style: TextStyle(color: goldColor),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: false,
                          groupValue: isOneTimeUse,
                          onChanged: (bool? value) {
                            setState(() {
                              isOneTimeUse = value!;
                              expiryDate = DateTime.now()
                                  .add(Duration(days: 1)); // Valid for 24 hours
                            });
                          },
                          activeColor: goldColor,
                        ),
                        Text(
                          'Valid for 24 hours',
                          style: TextStyle(color: goldColor),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: withdrawalLimitController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Withdrawal Limit',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Matching with amount',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.credit_card, color: goldColor),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: goldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        var response = await context.read<VCardsProvider>().createVCard(
                          VCard(
                            name: nameController.text, cardNumber: 0, expiryDate: "", cvv: 0, limit: int.tryParse(withdrawalLimitController.text))
                        );
                        GoRouter.of(context).pop();
                        // generateCardNumber();
                        // // Perform card creation action
                        // Navigator.pop(context, {
                        //   'name': nameController.text,
                        //   'amount': double.parse(amountController.text),
                        //   'type': isOneTimeUse
                        //       ? 'One-time use'
                        //       : 'Valid for 24 hours',
                        //   'withdrawalLimit':
                        //       double.parse(withdrawalLimitController.text),
                        //   'expiryDate': expiryDate,
                        //   'cardNumber':
                        //       cardNumber, // Add the generated card number
                        // });
                      }
                    },
                    child: const Text(
                      'Add Card',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                if (cardNumber.isNotEmpty)
                  Text(
                    'Card Number: $cardNumber',
                    style: TextStyle(color: Colors.white),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
