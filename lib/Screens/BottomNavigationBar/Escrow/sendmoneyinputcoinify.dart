import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../Styles/colours.dart';
import 'moneysentcoinifysuccessful.dart';

class SendInputMoneyCoinify extends StatefulWidget {
  @override
  _SendInputMoneyCoinifyState createState() => _SendInputMoneyCoinifyState();
}

class _SendInputMoneyCoinifyState extends State<SendInputMoneyCoinify> {
  List<String> pin = [];

  void _showPinInputSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Icon(Icons.lock_outline, size: 50, color: Colors.blue),
                  SizedBox(height: 20),
                  Text(
                    "To proceed, enter your PIN.",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: OtpTextField(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          numberOfFields: 4,
                          fieldWidth: 60.0,
                          showFieldAsBox: true,
                          borderRadius: BorderRadius.circular(15.0),
                          enabledBorderColor: Color(0xFFC9D0FF),
                          keyboardType: TextInputType.number,
                          autoFocus: true,

                            filled: true,
                            fillColor: Color(0xFFC9D0FF), // Set the background color for each input field

                          onSubmit: (otp) {
                            // Handle the OTP submission
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Color(0xFF1DA1FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        // Handle confirm action
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MoneySentCoinifySuccessful(), // Directly navigating to TransferScreen
                          ),
                        );
                      },
                      child: Text(
                        'Confirm',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }


  void _showConfirmationSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              // Amount
              Center(
                child: Text(
                  '₦57,526',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Transaction details
              _buildDetailRow('Bank', 'Coinify'),
              _buildDetailRow('User ID', 'Fredo65'),
              _buildDetailRow('Account Name', 'Fred Ogbonnaya'),
              _buildDetailRow('Amount', '₦57,526'),
              _buildDetailRow('Transaction Fee', '₦0.00'),
              SizedBox(height: 20),
              // Confirm button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Color(0xFF1DA1FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Handle confirm action

                    _showPinInputSheet(context);
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

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
      body: Padding(
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
            SizedBox(height: 30),

            // Amount input field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFEEEEF0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '0.00',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Description label
            Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // Description input field
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Color(0xFFEEEEF0),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'e.g. Paid from coinify',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),

            Spacer(),
            // Numpad and Send button
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  // Numpad placeholder

                  SizedBox(height: 20),

                  // Send button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        backgroundColor: Color(0xFF1DA1FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: _showConfirmationSheet,
                      child: Text(
                        'Send',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
