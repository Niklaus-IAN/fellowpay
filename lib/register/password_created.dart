import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PasswordCreated extends StatefulWidget {
  @override
  _PasswordCreatedState createState() => _PasswordCreatedState();
}

class _PasswordCreatedState extends State<PasswordCreated> {
  TextEditingController firstNameController = TextEditingController();

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
                  SizedBox(width: 50,),
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
                        ///   decoration: BoxDecoration(
                        //                           borderRadius: BorderRadius.circular(10),
                        //                           color:Color(0xFF1DA1FA),
                        //                         ),/// Filled progress step
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 30,
                        height: 7,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:Color(0xFF1DA1FA),
                        ),// Filled progress step
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
                ],
              ),
              SizedBox(height: 30,),
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
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                ),
              ),
              SizedBox(height: 16),
              RichText(
                text: TextSpan(
                  text: 'At least ',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(
                      text: '8 characters,',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Terms of use clicked");
                        },
                    ),
                    TextSpan(text: ' Containing '),
                    TextSpan(
                      text: 'a letter',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policies clicked");
                        },
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                      text: 'a number',
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy Policies clicked");
                        },
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
