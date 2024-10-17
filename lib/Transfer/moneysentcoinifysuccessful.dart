import 'package:flutter/material.dart';

class MoneySentCoinifySuccessful extends StatefulWidget {
  @override
  _MoneySentCoinifySuccessfulState createState() => _MoneySentCoinifySuccessfulState();
}

class _MoneySentCoinifySuccessfulState extends State<MoneySentCoinifySuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0, // Hides the app bar completely (you can customize it if you need)
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon at the top
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              SizedBox(height: 20),

              // Transaction amount text
              Text(
                '₦57,567',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              // Transaction completed text
              Text(
                'Transaction completed successfully',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 5),

              // Transaction ID
              Text(
                'Transaction ID: #26347878',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 30),

              // Share Receipt button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Color(0xFF1DA1FA))

                    ),
                  ),
                  onPressed: () {
                    // Handle confirm action


                  },
                  child: Text(
                    'Share Receipt',
                    style: TextStyle(fontSize: 18, color: Color(0xFF1DA1FA)),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Download Receipt button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Color(0xFF1DA1FA))

                    ),
                  ),
                  onPressed: () {
                    // Handle confirm action


                  },
                  child: Text(
                    'Download Receipt',
                    style: TextStyle(fontSize: 18, color: Color(0xFF1DA1FA)),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Done button
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


                  },
                  child: Text(
                    'Done',
                    style: TextStyle(fontSize: 18, color: Colors.white),
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
    home: MoneySentCoinifySuccessful(),
  ));
}
