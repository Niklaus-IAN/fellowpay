import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerificationSuccessful extends StatefulWidget {
  @override
  _VerificationSuccessfulState createState() => _VerificationSuccessfulState();
}

class _VerificationSuccessfulState extends State<VerificationSuccessful> {
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
              'All done!',
              style: TextStyle(fontSize: 24,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text('Your account has been created. You\'re now ready to explore and enjoy all the features and benefits we have to offer.',style: TextStyle(color: Colors.white),)),
            ),
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
                  child: Text('Start exploring App',style: TextStyle(color: Color(0xFF1DA1FA),fontWeight: FontWeight.bold),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
