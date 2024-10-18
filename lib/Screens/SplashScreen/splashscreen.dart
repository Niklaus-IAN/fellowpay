import 'package:fellowpay/Screens/SplashScreen/splashscreentwo.dart';
import 'package:fellowpay/Styles/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';

import '../../Widgets/clippers.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({Key? key}) : super(key: key);

  @override
  State<SplashOne> createState() => _SplashOneState();
}


class _SplashOneState extends State<SplashOne> with SingleTickerProviderStateMixin {


  bool display = false; // Initially set to true
  late AnimationController _animationController;
  late Animation<Offset> _animation;


  @override
  void initState() {
    super.initState();

    // Initialize AnimationController and the animation
    _animationController = AnimationController(
      duration: const Duration(seconds: 1), // Animation duration
      vsync: this,
    );

    _animation = Tween<Offset>(
      begin: const Offset(0.0, -2.0), // Start from further above the screen
      end: Offset.zero, // End at its original position (center)
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    // Start the animation immediately
    _animationController.forward();

    // Start the timer to show the SVG after 30 seconds
    startTimer();
  }

  void startTimer() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      setState(() {
        display = true; // Show the SVG image after 30 seconds
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    const spinkit = SpinKitCircle(
      color: Colors.white,
      size: 75.0,
    );


    Future.delayed(const Duration(seconds: 15), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SplashTwo()));
    });


    return Scaffold(
      body: Stack(
        children: [
          // Main blue background
          Container(
            color: blue, // Adjust the blue color if needed
          ),

          Positioned(
            top: 0,
            left: 0,
            child: ClipShadowPath(
              shadow: Shadow(
                blurRadius: 4.0, // Adjust shadow blur for depth
                color: black.withOpacity(0.3), // Adjust shadow color and opacity
                offset: Offset(2, 4), // Adjust shadow offset
              ),
              clipper: TopLeftClipper(), // Use the same TopLeftClipper for custom path
              child: Container(
                color: white,
                height: 200, // Adjusted height to better match the UI
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),


          // Bottom right white circle (cut-off)
          Positioned(
            bottom: -80, // Shifts it off the screen to achieve the cut-off effect
            right: -80,
            child: Container(
              height: 180, // Adjust size to match the circle
              width: 180,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(
                        0.2), // Shadow color
                    offset: Offset(
                        5.0, 0.0), // Offset from right
                    blurRadius:
                    20, // Spread of the shadow
                    spreadRadius: 0.0,
                  ),
                ]
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: black,
                  shape: BoxShape.circle,
                ),
              )
            ),
          ),


          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: display,
                    child: SlideTransition(
                      position: _animation,
                      child: Opacity(
                        
                        opacity: display ? 1.0 : 0.0,
                        child: Container(
                          height: 400,
                          width: 400,
                          color: Colors.transparent,
                          child: Stack(
                            children: [
                        
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                    'assets/images/Group 47201.svg',
                                    semanticsLabel: 'My SVG Image',
                                    height: 400,
                                    width: 400,
                                    fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
                                  ), // Replace with your loading widget
                                ),
                              ),
                        
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SvgPicture.asset(
                                    'assets/images/cib_f-secure.svg',
                                    semanticsLabel: 'My SVG Image',
                                    // height: 400,
                                    // width: 400,
                                    fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
                                  ), // Replace with your loading widget
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  spinkit
                ],
              ), // Replace with your loading widget
            ),
          ),

        ],
      ),
    );
  }
}

class TopLeftClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start from top left
    path.moveTo(0, 0);

    // Move down vertically, to start the curve
    path.lineTo(0, size.height * 0.5);

    // Create a smooth curve to the top-right side
    path.quadraticBezierTo(
      size.width * 0.15, size.height * 0.8, // Control point (more to the right for a soft curve)
      size.width * 0.22, size.height * 0.5,  // End point of the curve
    );

    // Draw line from the curve to the top-right edge
    path.lineTo(size.width/3, 0);

    // // Close the path
    // path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}