import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Styles/colours.dart';


successDialog(BuildContext context, String message) {
  return Theme(
    data: ThemeData(
      dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Colors.transparent
      ),
    ),
    child: Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        alignment: Alignment.center,  // Center the top element in the stack
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90.0),  // Add space for the icon at the top
            child: ClipPath(
              clipper: CurvedShapeClipper(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 60), // Space for the icon above
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 50,
                      width: 250,  // Button width
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();  // Close the dialog
                        },
                        style: ElevatedButton.styleFrom(
                          splashFactory: NoSplash.splashFactory,
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),  // Rounded button corners
                          ),
                        ),
                        child: Text(
                          'Okay, thank you!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),  // Add bottom space
                  ],
                ),
              ),
            ),
          ),
          // Add the top icon in the stack
          // Image.asset('assets/images/Group 1000000943.png'),
          // Position the image at the top center of the stack
          Positioned(
            top: -10,  // Adjust the top positioning as needed
            child: Image.asset(
              'assets/images/Group 1000000943.png',
            ),
          ),
        ],
      ),
    ),
  );
}


class CurvedShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Start from the top left corner with a smoother curve
    path.moveTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);

    // Draw the line to the start of the notch
    path.lineTo(size.width * 0.32 - 10, 0); // Adjusted width for smoother curve

    // Smooth entrance to the notch
    path.quadraticBezierTo(
        size.width * 0.32, 0,
        size.width * 0.34, 10);

    // Create the notch using a smoother curve as shown in your image
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.35,
        size.width * 0.66, 10);

    // Smooth exit from the notch
    path.quadraticBezierTo(
        size.width * 0.68, 0,
        size.width * 0.7, 0);

    // Continue to the right edge with rounded corners
    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 20);

    // Draw the right side and bottom with rounded corners
    path.lineTo(size.width, size.height - 20);
    path.quadraticBezierTo(size.width, size.height, size.width - 20, size.height);
    path.lineTo(20, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - 20);

    // Close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; // No need to reclip
  }
}


features({required String assets, required String about}) {
  return Container(
    height: 98,
    width: 180,
    decoration: BoxDecoration(
      color: white, // Can be omitted
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      boxShadow: [
        BoxShadow(
          color: black01.withOpacity(0.05), // Shadow color
          offset: const Offset(0.0, 7.0), // Offset from right
          blurRadius: 8, // Spread of the shadow
          spreadRadius: 0.0,
        ),
      ], // Add rounded corners
    ),
    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 6.5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          assets,
          semanticsLabel: 'My SVG Image',
        ),
        Text(
          about,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: Color(0xff676B94),
          ),
        ),
      ],
    ),
  );
}


report ({required VoidCallback tap, required IconData icon, required String type, required String about, required String date, required String amount}) {
  return GestureDetector(
    onTap: tap,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 67,
        // width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: white,
          boxShadow: [
            BoxShadow(
              color: black.withOpacity(0.1), // Shadow color
              offset: Offset(0.0, 0.0), // Offset from right
              blurRadius: 1, // Spread of the shadow
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 43,
                width: 43,
                child: Card(
                  elevation: 0.5,
                  color: const Color(0xffEFF1F7),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)), // Correct way to apply border radius
                  ),
                  child: Icon(
                    icon,
                    color: const Color(0xff7580BD),
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500, color: black),
                  ),
                  Text(
                    about,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff83848B)),
                  ),
                ],),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                        fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xff83848B)),
                  ),
                  Text(
                    // '₦ $amount'
                    amount,
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500, color: red),
                  ),
                ],)
            ],
          ),
        ),
      ),
    ),
  );
}