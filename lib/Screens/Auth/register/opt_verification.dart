import 'package:fellowpay/Styles/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart'; // For TapGestureRecognizer

class OtpVerification extends StatefulWidget {
  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  String _otp = '';
  String? selectedValue;

  // Example country items (replace this with actual data)


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Verify your phone number with code',
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Enter the security code we sent to +32123456789',
                            style: TextStyle(color: Color(0xFF878787),),
                          ),
                        ),
                        Text('Edit',style: TextStyle(color: Color(0xFF1DA1FA),fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: OtpTextField(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            numberOfFields: 5,
                            fieldWidth: 50.0,
                            showFieldAsBox: true,
                            focusedBorderColor: blue,
                            borderRadius: BorderRadius.circular(8.0),
                            borderColor: Colors.blue,
                            autoFocus: true,
                            keyboardType: TextInputType.number,
                            onSubmit: (otp) {
                              // Verify the OTP or proceed with further actions
                            },
                          ),
                        ),
                      ],
                    ),


                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: RichText(
                        text: TextSpan(
                          text: "Didn't get the code? ",
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Resend it',
                              style: TextStyle(
                                color: Color(0xFF1DA1FA),
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Sign in tapped');
                                  // Navigate to sign in page or handle sign-in action
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xFF1DA1FA),
                  ),
                  onPressed: () {
                    // Handle sending OTP logic here
                    print('Send Code button pressed');
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(color: Colors.white),
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

void main() => runApp(MaterialApp(
  home: OtpVerification(),
));
