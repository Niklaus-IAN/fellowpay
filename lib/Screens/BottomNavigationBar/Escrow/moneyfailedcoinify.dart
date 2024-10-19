import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Styles/colours.dart';

class MoneyFailedCoinify extends StatefulWidget {
  @override
  _MoneyFailedCoinifyState createState() => _MoneyFailedCoinifyState();
}

class _MoneyFailedCoinifyState extends State<MoneyFailedCoinify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0, // Hides the app bar completely (you can customize it if needed)
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Parent Container with padding, black background, and circular shape
              SvgPicture.asset(
                'assets/icons/Symbol-1.svg',
                semanticsLabel: 'My SVG Image',
                height: 237,
                width: 237,
              ),
              SizedBox(height: 20),

              // Payment Error text
              Text(
                'Payment Error',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffDC0B0B),
                ),
              ),

              // Oops! Network Error
              Text(
                'Oops! Network Error',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffDC0B0B),
                ),
              ),
              SizedBox(height: 20),

              // Your Transaction not Successful
              Text(
                'Your Transaction not Successful',
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFF808083),
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: 30),

              // Retry Payment button
              SizedBox(
                height: 70,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Implement retry payment functionality
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    foregroundColor: white, backgroundColor: blue, // Text color
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Retry Payment', style: TextStyle(color: Colors.white,fontSize: 18)),
                      SizedBox(width: 10),
                      Icon(Icons.keyboard_arrow_right),
                    ],
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

void main() {
  runApp(MaterialApp(
    home: MoneyFailedCoinify(),
  ));
}
