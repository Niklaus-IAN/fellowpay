import 'package:fellowpay/Styles/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../login/signin.dart';

class VerificationSuccessful extends StatefulWidget {
  @override
  _VerificationSuccessfulState createState() => _VerificationSuccessfulState();
}

class _VerificationSuccessfulState extends State<VerificationSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Design 1.png'),
            SizedBox(
              height: 50,
            ),
            Text(
              'All done!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Your account has been created. You\'re now ready to explore and enjoy all the features and benefits we have to offer.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xFF1DA1FA), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
