import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fellowpay/Screens/SplashScreen/splashscreenthree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Styles/colours.dart';


class SplashTwo extends StatefulWidget {
  const SplashTwo({super.key});

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Group 1000000942.svg',
                      semanticsLabel: 'My SVG Image',
                      width: 250,
                    ),
                    SizedBox(height: 18,),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'The best App to recharge\nairtime, data and pay bills',
                          textAlign: TextAlign.center,
                          textStyle: TextStyle(
                              color: white,
                              fontStyle: FontStyle.italic,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            height: 1.75
                          ), speed: Duration(milliseconds: 50), // Speed of typing,
                        ),
                      ],
                      totalRepeatCount: 1, // Animation will run once
                      pause: const Duration(milliseconds: 1000), // Pause before repeating
                      displayFullTextOnTap: true, // Show full text if tapped
                      stopPauseOnTap: true, // Stop pause and complete animation if tapped
                    ),
                  ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SplashThree(),),);
                    },
                    style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Change the border radius here
                      ),
                    ),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
