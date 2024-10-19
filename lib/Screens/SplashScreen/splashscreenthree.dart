import 'dart:async';
import 'package:flutter/material.dart';
import '../../Styles/colours.dart';
import '../../Widgets/buttons.dart';
import '../../Widgets/clippers.dart';
import '../Auth/register/register.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({super.key});

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
  late PageController _pageController;
  late Timer _timer; // Define the timer
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    startTimer(); // Start the automatic page switcher timer
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  // Method to start a periodic timer to switch between pages
  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      if (mounted) {
        setState(() {
          _currentIndex = (_currentIndex + 1) % imageList.length;
          _pageController.animateToPage(
            _currentIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        });
      }
    });
  }

  // Sample image list
  List<String> imageList = [
    'assets/images/Plain-credit-card-unscreen 2.png',
    'assets/images/Plain-credit-card-unscreen 1.png',
    'assets/images/Plain-credit-card-unscreen 1-1.png'
  ];

  // Sample text list
  List<String> textList = [
    'Now easier to pay bills online!',
    'AI inclusivity you can trust!',
    '24/7 customer support! you can trust.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main background color
          Container(
            color: white, // Adjust the background color if needed
          ),
          // Positioned circle decoration
          Positioned(
            top: -40,
            left: -80,
            child: Container(
              height: 180,
              width: 180,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: blue,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: black.withOpacity(0.2),
                    offset: const Offset(5.0, 0.0),
                    blurRadius: 10,
                    spreadRadius: 0.0,
                  ),
                ],
              ),
            ),
          ),
          // Positioned wave decoration at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipShadowPath(
              shadow: Shadow(
                blurRadius: 10.0,
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 4),
              ),
              clipper: BottomWaveClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                color: blue,
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
                            children: List.generate(3, (index) {
                              return AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                width: _currentIndex == index ? 36 : 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: _currentIndex == index ? black : white,
                                ),
                              );
                            }),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 50,
                              width: 180,
                              child: MyOutlinedButton(
                                onPressed: () {
                                  print('Skip button pressed');
                                },
                                gradient: customGradient01,
                                style: ElevatedButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  backgroundColor: blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  'Skip',
                                  style: TextStyle(
                                    color: white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: 180,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Next button pressed');

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterScreen()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  splashFactory: NoSplash.splashFactory,
                                  backgroundColor: white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
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
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_sharp,
                                      color: black,
                                    )
                                  ],
                                ),
                              ),
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
          // PageView content with images and text
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: IgnorePointer(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: imageList.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      child: _currentIndex == index
                          ? Container(
                              height: 400,
                              color: Colors.transparent,
                              child: Column(
                                children: [
                                  Image.asset(imageList[index]),
                                  const SizedBox(height: 23),
                                  Text(
                                    textList[index],
                                    style: TextStyle(
                                      color: black,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    );
                  },
                ),
              ),
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
