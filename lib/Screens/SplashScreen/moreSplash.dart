import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Styles/colours.dart';
import '../../Widgets/clippers.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({Key? key}) : super(key: key);

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main blue background
          Container(
            color: white, // Adjust the blue color if needed
          ),

          // // Top left white curve
          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: ClipPath(
          //     clipper: TopLeftClipper(),
          //     child: Container(
          //       color: Colors.white,
          //       height: 200, // Adjusted height to better match the UI
          //       width: MediaQuery.of(context).size.width,
          //     ),
          //   ),
          // ),

          // Positioned(
          //   top: 0,
          //   left: 0,
          //   child: ClipShadowPath(
          //     shadow: Shadow(
          //       blurRadius: 4.0, // Adjust shadow blur for depth
          //       color: black.withOpacity(0.3), // Adjust shadow color and opacity
          //       offset: Offset(2, 4), // Adjust shadow offset
          //     ),
          //     clipper: TopLeftClipper(), // Use the same TopLeftClipper for custom path
          //     child: Container(
          //       color: white,
          //       height: 200, // Adjusted height to better match the UI
          //       width: MediaQuery.of(context).size.width,
          //     ),
          //   ),
          // ),

          // Bottom right white circle (cut-off)
          Positioned(
            top: -42, // Shifts it off the screen to achieve the cut-off effect
            left: -80, // Move it to the left
            child: Container(
              height: 200, // Adjust size to match the circle
              width: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.2), // Shadow color
                    offset: Offset(5.0, 0.0), // Offset from the right
                    blurRadius: 20, // Spread of the shadow
                    spreadRadius: 0.0,
                  ),
                ],
              ),
            ),
          ),

          // ClipShadowPath(
          //   shadow: Shadow(
          //     blurRadius: 10.0,
          //     color: Colors.black.withOpacity(0.3),
          //     offset: const Offset(0, 4),
          //   ),
          //   clipper: BottomWaveClipper(),
          //   child: Container(
          //     height: 300.0, // Adjust height for the curve
          //     decoration: BoxDecoration(
          //       color: blue, // Adjust to your preferred color
          //     ),
          //   ),
          // ),

          Align(
            alignment: Alignment.bottomCenter, // Align the curve to the bottom
            child: ClipShadowPath(
              shadow: Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.3),
                offset: Offset(0, 4),
              ),
              clipper: BottomWaveClipper(),
              child: Container(
                height: 250.0, // Adjust height of the curve section
                decoration: BoxDecoration(
                  color: Colors.blue, // Adjust to your preferred color
                ),
              ),
            ),
          ),

          // Align(
          //   alignment: Alignment.bottomCenter, // Align the curve to the bottom
          //   child: ClipPath(
          //     clipper: BottomWaveClipper(),
          //     child: Container(
          //       height: 250.0, // Adjust height to fit design
          //       decoration: BoxDecoration(
          //         color: Colors.blue, // Adjust color to match your design
          //       ),
          //     ),
          //   ),
          // ),

          // Positioned.fill(
          //   child: Align(
          //     alignment: Alignment.center,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(
          //           height: 400,
          //           width: 400,
          //           color: Colors.transparent,
          //           child: Stack(
          //             children: [
          //               Positioned.fill(
          //                 child: Align(
          //                   alignment: Alignment.center,
          //                   child: SvgPicture.asset(
          //                     'assets/images/Group 47201.svg',
          //                     semanticsLabel: 'My SVG Image',
          //                     height: 400,
          //                     width: 400,
          //                     fit: BoxFit
          //                         .contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
          //                   ), // Replace with your loading widget
          //                 ),
          //               ),
          //               Positioned.fill(
          //                 child: Align(
          //                   alignment: Alignment.center,
          //                   child: SvgPicture.asset(
          //                     'assets/images/cib_f-secure.svg',
          //                     semanticsLabel: 'My SVG Image',
          //                     // height: 400,
          //                     // width: 400,
          //                     fit: BoxFit
          //                         .contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
          //                   ), // Replace with your loading widget
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ), // Replace with your loading widget
          //   ),
          // ),
        ],
      ),
    );
  }
}

// // Custom Clipper for the bottom curve
// class BottomWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0.0, size.height - 100); // Start from bottom-left
//     var firstControlPoint = Offset(size.width / 2, size.height + 50);
//     var firstEndPoint = Offset(size.width, size.height - 100);
//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//     path.lineTo(size.width, 0.0); // Continue to top-right corner
//     path.close(); // Close the path to the starting point
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }

// Custom Clipper for the bottom curve
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // var path = Path();
    // path.lineTo(0.0, size.height - 100); // Start from bottom-left
    // var firstControlPoint = Offset(size.width / 4, size.height - 150);
    // var firstEndPoint = Offset(size.width / 2, size.height - 100);
    // var secondControlPoint = Offset(size.width * 3 / 4, size.height - 50);
    // var secondEndPoint = Offset(size.width, size.height - 100);
    //
    // // Create the wave-like curve
    // path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
    //     firstEndPoint.dx, firstEndPoint.dy);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);
    //
    // path.lineTo(size.width, 0.0); // Continue to the top-right corner
    // path.close(); // Close the path
    // return path;

    var path = Path();

    path.moveTo(0, 30);
    path.quadraticBezierTo(size.width / 6, 0, size.width / 5 * 25, 30);
    path.quadraticBezierTo(
        size.width / 1.5, size.height / 2, size.width, size.height / 2 * 3);
    path.lineTo(size.width, size.width);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
