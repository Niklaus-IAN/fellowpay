import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Birthday extends StatefulWidget {
  @override
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<Birthday> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _dobController = TextEditingController();
  bool _isChecked = true;

  @override
  void dispose() {
    _dobController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      // Handle back button action
                    },
                  ),
                  SizedBox(width: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      Container(
                        width: 30,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 30,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade300,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 30,
                        height: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF1DA1FA),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "What is your date of birth?",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "We need your DOB to verify your account.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Date of birth',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _dobController,
                decoration: InputDecoration(
                  hintText: 'MM/DD/YYYY',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Color(0xFF007B5D))),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Color(0xFF1DA1FA),
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Add a Referral code',
                      style: TextStyle(color: Color(0xFF1DA1FA)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Spacer(),
              Row(
                children: [
                  Checkbox(
                    checkColor: Colors.white,

                    activeColor: Color(0xFF1DA1FA),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Expanded(
                    child: Text(
                      'Check box to be informed about marketing information or any special offer',
                      style: TextStyle(fontSize: 13,color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'By registering, you agree to our ',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                  children: [
                    TextSpan(
                      text: 'Terms of use',
                      style: TextStyle(
                        color: Color(0xFF1DA1FA),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle Terms of Use click
                          print("Terms of use clicked");
                        },
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policies',
                      style: TextStyle(
                        color: Color(0xFF1DA1FA),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Handle Privacy Policies click
                          print("Privacy Policies clicked");
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
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
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}


