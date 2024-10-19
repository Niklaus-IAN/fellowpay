import 'package:flutter/material.dart';



class EmailVerifyScreen extends StatelessWidget {
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
              SizedBox(height: 20),
              Text(
                'Verify your email',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Please check our inbox and tap the link in the email we've just sent to:",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Expanded(
                    child: Text(
                      'balogunkrixus@gmail.com', // Replace with your dynamic email
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  GestureDetector(
                    onTap: () {
                      // Handle resend action
                    },
                    child: Text(
                      'Resend it',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1DA1FA),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                ],
              ),

              Spacer(),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle "I'll do it later" action
                  },
                  child: Text(
                    "I'll do it later",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1DA1FA),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Handle open email action
                  },
                  child: Text(
                    'Open email',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
