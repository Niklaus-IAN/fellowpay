import 'package:flutter/material.dart';

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
              Container(
                padding: const EdgeInsets.all(24.0), // Padding inside the parent container
                decoration: BoxDecoration(
                  color: Colors.red[100], // Background color of parent container
                  shape: BoxShape.circle, // Circular shape for parent container
                ),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle, // Circular shape for child container
                  ),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Payment Error text
              Text(
                'Payment Error',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 10),

              // Oops! Network Error
              Text(
                'Oops! Network Error',
                style: TextStyle(color: Color(0xFFDC0B0B)),
              ),
              SizedBox(height: 5),

              // Your Transaction not Successful
              Text(
                'Your Transaction not Successful',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF808083),
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
                    foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
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
