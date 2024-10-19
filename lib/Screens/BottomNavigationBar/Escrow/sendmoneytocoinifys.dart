import 'package:fellowpay/Screens/BottomNavigationBar/Escrow/sendmoneyinputcoinify.dart';
import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';

class SendMoneyToCoinify extends StatefulWidget {
  @override
  _SendMoneyToCoinifyState createState() => _SendMoneyToCoinifyState();
}

class _SendMoneyToCoinifyState extends State<SendMoneyToCoinify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: RichText(
            text: TextSpan(
              text: 'Send Money To ',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Coinify',
                  style: TextStyle(
                    color: Color(0xFF1DA1FA), // Same color as the button
                  ),
                ),
                TextSpan(
                  text: ' Wallet',
                ),
              ],
            ),
          ),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 70.0, // Set the height you want
        ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Wallet balance container
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6,horizontal: 33),
                        decoration: BoxDecoration(
                          color: blue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'Wallet Balance: ₦1,565,520.57',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // Image illustration
                    Center(
                      child: Image.asset(
                        'assets/images/File searching-rafiki 1.png', // Replace with your image path
                        height: 200, // Adjust based on your design
                      ),
                    ),
                    SizedBox(height: 20),

                    // User ID Input field
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User ID',
                        prefixIcon: Icon(Icons.alternate_email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),

          // Continue button (at the bottom)
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color(0xFF1DA1FA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Handle sign in action

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SendInputMoneyCoinify(), // Directly navigating to TransferScreen
                    ),
                  );
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
