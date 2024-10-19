import 'package:fellowpay/Screens/BottomNavigationBar/Finance/investment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Styles/colours.dart';

class AISuggestion extends StatefulWidget {
  const AISuggestion({super.key});

  @override
  State<AISuggestion> createState() => _AISuggestionState();
}

class _AISuggestionState extends State<AISuggestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 15),
        //     child: Icon(
        //       Icons.arrow_back_ios,
        //       color: black,
        //     ),
        //   ),
        // ),
        toolbarHeight: 60.0, // Set the height you want
        title: Text(
          'AI Integration',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Color(0xff393939)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              suggestion(color: Color(0xffAFA2FC), type: 1, assetName: 'assets/icons/Group-3.svg', info1: 'Auto-generated investments', info2: 'Streamlined investments opportunities for you.', onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => invests()));
              }, latest: false),
              suggestion(color: Color(0xffE5F4A8), type: 2, assetName: 'assets/icons/Group-4.svg', info1: 'Spend and Save', info2: 'Spend weekly, Save more Effortlessly.', onTap: () {  }, latest: false),
              suggestion(color: Color(0xff9CD4E9), type: 1, assetName: 'assets/icons/Group-1.svg', info1: 'Set recurring bill payments.', info2: 'Automate bill payments, Simplify your life.', onTap: () {  }, latest: true),
              suggestion(color: Color(0xffFFC3BD), type: 2, assetName: 'assets/icons/Group-2.svg', info1: 'Virtual Cards', info2: 'Secure Digital payment solution.', onTap: () {  }, latest: true),
              suggestion(color: Color(0xffAFA2FC), type: 1, assetName: 'assets/icons/Group-3.svg', info1: 'Savings report', info2: 'Streamlined investments opportunities for you.', onTap: () {  }, latest: true),
              suggestion(color: Color(0xffE5F4A8), type: 2, assetName: 'assets/icons/Group-4.svg', info1: 'Safe Vault', info2: 'Spend weekly, Save more Effortlessly.', onTap: () {  }, latest: true),
              suggestion(color: Color(0xff9CD4E9), type: 1, assetName: 'assets/icons/Group-1.svg', info1: 'Crowd funding', info2: 'Automate bill payments, Simplify your life.', onTap: () {  }, latest: true),
              ],
          ),
        ),
      ),
    );
  }

  suggestion({
    required Color color,
    required int type,
    required String assetName,
    required String info1,
    required String info2,
    required bool latest,
  required void Function() onTap
}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: type == 1
              ? BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )
              : BorderRadius.only(
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 30),
        child: Stack(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center, // Centering vertically
              children: [
                SvgPicture.asset(
                  assetName,
                  semanticsLabel: 'My SVG Image',
                  width: 70,
                ),
                SizedBox(width: 20),
                Expanded( // Makes the text section flexible
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space out the texts
                    crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                    children: [
                      Text(
                        info1,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        info2,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Overlay the banner in the top right corner
            Visibility(
              visible: latest,
              child: Positioned(
                top: 0,
                right: -5,
                child: Banner(
                  message: 'Soon',
                  location: BannerLocation.topEnd,
                  color: Colors.red,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
