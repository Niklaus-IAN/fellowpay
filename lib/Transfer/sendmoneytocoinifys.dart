import 'package:flutter/material.dart';

class SendMoneyToCoinify extends StatefulWidget {
  @override
  _SendMoneyToCoinifyState createState() => _SendMoneyToCoinifyState();
}

class _SendMoneyToCoinifyState extends State<SendMoneyToCoinify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back logic here
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Send Money To Coinify Wallet',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Wallet balance container
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF1DA1FA),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        'Wallet Balance: ₦1,565,520.57',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
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
