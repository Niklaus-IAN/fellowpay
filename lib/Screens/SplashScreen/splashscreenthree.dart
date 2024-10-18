import 'dart:async';

import 'package:flutter/material.dart';

import '../../Styles/colours.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/clippers.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({super.key});

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
  late PageController _pageController;
  // late int indexes;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    startTimer();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 10), (timer) {
      _currentIndex = (_currentIndex + 1) % imageList.length;
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  List<String> imageList = [
    'assets/images/Plain-credit-card-unscreen 2.png',
    'assets/images/Plain-credit-card-unscreen 1.png',
    'assets/images/Plain-credit-card-unscreen 1-1.png'
  ];

  List<String> textList = [
    'Now easier to pay bills online!',
    'AI inclusivity you can trust!',
    '24/7 customer support! you can trust.'
  ];

  @override
  Widget build(BuildContext context) {
    int indexes = _currentIndex;

    return Scaffold(
      body: Stack(
        children: [
          // Main blue background
          Container(
            color: white, // Adjust the blue color if needed
          ),
          // Bottom right white circle (cut-off)
          Positioned(
            top: -40, // Shifts the circle upwards, off-screen
            left: -80, // Shifts the circle to the left, off-screen
            child: Container(
              height: 180, // Adjust size to match the circle
              width: 180,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: blue,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.2), // Shadow color
                      offset: Offset(5.0, 0.0), // Offset from right
                      blurRadius: 10, // Spread of the shadow
                      spreadRadius: 0.0,
                    ),
                  ]),
            ),
          ),
          Positioned(
            bottom: 0, // Position at the bottom
            left: 0,
            right: 0,
            child: ClipShadowPath(
              shadow: Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.2), // Adjust shadow color
                offset: Offset(0, 4), // Adjust shadow offset
              ),
              clipper: BottomWaveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    0.4, // Adjust height according to your need
                color: Colors.blue, // Adjust background color
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 300,
                    color: transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: indexes == 0 ? 36 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: indexes == 0 ? black : white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: indexes == 1 ? 36 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: indexes == 1 ? black : white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: indexes == 2 ? 36 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: indexes == 2 ? black : white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 180,
                              child: MyOutlinedButton(
                                onPressed: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(builder: (context) => login()),
                                  // );
                                },
                                gradient: customGradient01,
                                style: ElevatedButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  backgroundColor: blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10), // Change the border radius here
                                  ),
                                ),
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 180,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    splashFactory: NoSplash.splashFactory,
                                    backgroundColor: white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          10), // Change the border radius here
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Next',
                                        style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_sharp,
                                        color: black,
                                      )
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageList.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;

                      indexes = _currentIndex;
                    });
                    // print(_currentIndex);
                  },
                  itemBuilder: (context, index) {
                    return AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      child: _currentIndex == index
                          ? Container(
                              height: 400,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image.asset(
                                      imageList[index]),
                                  const SizedBox(
                                    height: 23,
                                  ),
                                  Text(
                                    textList[indexes],
                                    style: TextStyle(
                                        color: black,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    );
                  }), // Replace with your loading widget
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at the bottom left corner
    path.moveTo(0, size.height * 0.75);

    // Draw a curved wave using quadraticBezierTo
    path.quadraticBezierTo(
        size.width * 0.5, size.height * 0.6, size.width, size.height * 0.75);

    // Draw the remaining lines to close the shape
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

// CustomClipper to create the wave shape at the bottom
class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Start from the maximum point of the wave on the left side
    path.moveTo(0, 0); // Set the starting point higher

    path.quadraticBezierTo(
      size.width * 0.2,
      0,
      size.width * 0.4,
      size.height * 0.2,
    );

    // Create the second wave
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.55,
      size.width,
      size.height * 0.25,
    );

    // Draw the line to the bottom-right corner and back to the starting point
    path.lineTo(size.width, size.height); // Bottom-right corner
    path.lineTo(0, size.height); // Bottom-left corner

    path.close(); // Complete the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
