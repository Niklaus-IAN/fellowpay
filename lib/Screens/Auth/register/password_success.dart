import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'about_yourself.dart';

class PasswordSuccess extends StatefulWidget {
  const PasswordSuccess({Key? key}) : super(key: key);

  @override
  State<PasswordSuccess> createState() => _PasswordSuccessState();
}

class _PasswordSuccessState extends State<PasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DA1FA),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Layer 1 2.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password created!',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Your password has been created.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutYourself()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Color(0xFF1DA1FA),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
