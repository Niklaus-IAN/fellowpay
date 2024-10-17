import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerificationComplete extends StatefulWidget {
  const VerificationComplete({Key? key}) : super(key: key);

  @override
  State<VerificationComplete> createState() => _VerificationCompleteState();
}

class _VerificationCompleteState extends State<VerificationComplete> {
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
              ' Verification complete!',
              style: TextStyle(fontSize: 24,color: Colors.white),
            ),
            Text('Your Phone number has been verified.',style: TextStyle(color: Colors.white),),
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


