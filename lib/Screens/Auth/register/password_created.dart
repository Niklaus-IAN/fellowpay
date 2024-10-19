import 'package:fellowpay/Screens/Auth/register/password_success.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';

class PasswordCreated extends StatefulWidget {
  @override
  _PasswordCreatedState createState() => _PasswordCreatedState();
}

class _PasswordCreatedState extends State<PasswordCreated> {
  TextEditingController firstNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ), // Filled progress step
            ),
            SizedBox(width: 5),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blue,
              ),

              /// Filled progress step
            ),
            SizedBox(width: 5),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade300,
              ),
              // Unfilled progress step
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70.0, // Set the height you want
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Create your password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Choose a password',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 10),
              TextField(
                controller: firstNameController,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Color(0xFF007B5D)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                ),
              ),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'At least ',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  children: [
                    TextSpan(
                      text: '8 characters,',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' Containing '),
                    TextSpan(
                      text: 'a letter',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'a number',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              SizedBox(
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
                    // Handle button action
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordSuccess()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
