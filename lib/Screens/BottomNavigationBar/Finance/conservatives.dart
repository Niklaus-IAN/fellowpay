import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Styles/colours.dart';
import '../../../Widgets/dialog.dart';

class ConservativeRisk extends StatefulWidget {
  const ConservativeRisk({super.key});

  @override
  State<ConservativeRisk> createState() => _ConservativeRiskState();
}

class _ConservativeRiskState extends State<ConservativeRisk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70.0, // Set the height you want
        title: const Text(
          'Conservatives',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: white, // Can be omitted
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/Conservative.png'), // Replace with your image path
                      fit: BoxFit
                          .fill, // Ensures the image covers the entire container
                    ),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                    boxShadow: [
                      BoxShadow(
                        color: black01.withOpacity(0.05), // Shadow color
                        offset: Offset(0.0, 7.0), // Offset from right
                        blurRadius: 8, // Spread of the shadow
                        spreadRadius: 0.0,
                      ),
                    ], // Add rounded corners
                  ),
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best time to invest in Conservative stocks',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff676B94),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Text(
                          '+45.49% in the past 5 years',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff373F5E),
                          ),
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/icons/nairayellow.svg',
                        semanticsLabel: 'My SVG Image',
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 10.0,
                  runSpacing: 8.0,
                  children: [
                    features(
                        assets: 'assets/icons/auto_graph.svg',
                        about: 'Long-term capital appreciation'),
                    features(
                        assets: 'assets/icons/shopping_cart.svg',
                        about: 'Easy to Buy/Sell'),
                    features(
                        assets: 'assets/icons/category.svg',
                        about: 'Multiple form Digital, Physical & Bonds'),
                    features(
                        assets: 'assets/icons/vpn_lock.svg',
                        about: 'Universally recognized and accepted'),
                    features(
                        assets: 'assets/icons/donut_small.svg',
                        about: 'Diversify risk by reducing the correlation'),
                    features(
                        assets: 'assets/icons/waterfall_chart.svg',
                        about: 'Hedge Against Volatility'),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: white, // Can be omitted
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: black01.withOpacity(0.05), // Shadow color
                        offset: const Offset(0.0, 7.0), // Offset from right
                        blurRadius: 8, // Spread of the shadow
                        spreadRadius: 0.0,
                      ),
                    ], // Add rounded corners
                  ),
                  padding:
                      const EdgeInsets.all(18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Current buy price: ',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff9D9EA2),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Text(
                        '₦3000.09',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff373F5E),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // // Navigator.pop(context);
                      // switch (val.toInt()) {
                      //   case 0:
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => ConservativeRisk()));
                      //   case 1:
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => ModerateRisk()));
                      //   case 2:
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => AggressiveRisk()));
                      //   default:
                      //     null;
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Change the border radius here
                      ),
                    ),
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
