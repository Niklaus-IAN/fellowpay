import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationEmail extends StatefulWidget {
  const VerificationEmail({Key? key}) : super(key: key);

  @override
  State<VerificationEmail> createState() => _VerificationCompleteState();
}

class _VerificationCompleteState extends State<VerificationEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1DA1FA),
      body: SafeArea(
        top: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/Group 47201.svg',
              semanticsLabel: 'My SVG Image',
              height: 400,
              width: 400,
              fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
            ),
            Text(
              ' Email Verified',
              style: TextStyle(fontSize: 24,color: Colors.white),
            ),
            Center(child: Text('Your Email account has been successfully verified.',style: TextStyle(color: Colors.white),)),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.white
                  ),
                  onPressed: (){},
                  child: Text('Continue',style: TextStyle(color: Color(0xFF1DA1FA),fontWeight: FontWeight.bold),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


