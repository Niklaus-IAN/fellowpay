import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';
import 'allverificationsuccessful.dart';

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
                color: Colors.grey.shade300,
              ),
            ),
            SizedBox(width: 5),
            Container(
              width: 30,
              height: 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: blue,
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
                height: 10,
              ),
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
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 32),
              Text(
                'Date of birth',
                style: TextStyle(fontSize: 16, color: black),
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
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      checkColor: Colors.white,
                      activeColor: Color(0xFF1DA1FA),
                      value: _isChecked,
                      onChanged: (value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          side:
                              BorderSide(color: Color(0xffFFFFFF), width: 0.8)),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Check box to be informed about marketing information or any special offer',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'By registering, you agree to our ',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                  children: [
                    TextSpan(
                      text: 'Terms of use',
                      style: TextStyle(
                        color: Color(0xFF1DA1FA),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policies',
                      style: TextStyle(
                        color: Color(0xFF1DA1FA),
                        decoration: TextDecoration.underline,
                      ),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationSuccessful()));
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
