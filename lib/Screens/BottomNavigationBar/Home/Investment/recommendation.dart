import 'package:fellowpay/Screens/BottomNavigationBar/Home/Investment/aggressive.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Home/Investment/conservatives.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Home/Investment/moderate.dart';
import 'package:flutter/material.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/textFields.dart';

class Recommend extends StatefulWidget {
  const Recommend({super.key});

  @override
  State<Recommend> createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    String? selectedRisk = 'Conservative'; // This will hold the selected value
    int val = 0;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
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
        actions: [
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  shape:
                  const RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.only(
                      topLeft:
                      Radius.circular(25),
                      topRight:
                      Radius.circular(25),
                    ),
                  ),
                  backgroundColor: Color(0xffD2D4DB),
                  context: context,
                  builder: ((context) {
                    return StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return SizedBox(
                          height:
                          MediaQuery.of(context)
                              .size
                              .height *
                              0.55,
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                const EdgeInsets
                                .symmetric(horizontal: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/Data card-$val.png', width: double.infinity,),
                                  const SizedBox(height: 10,),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    height: 105,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffFFFFFF),
                                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                                      border: Border.all(
                                        color: selectedRisk == 'Conservative' ? const Color(0xff283F9E) : Colors.transparent,
                                      )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Conservative',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xffE5A545)),
                                                ),
                                                Text(
                                                  'Focused on higher returns while minimizing risk',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xff676B94)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Radio<String>(
                                            value: 'Conservative',
                                            groupValue: selectedRisk,
                                            onChanged: (String? value) {
                                              print("Selected Value: $value"); // Add this line to debug
                                              setState(() {
                                                selectedRisk = value;
                                                val = 0;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    height: 105,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFFFFF),
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                        border: Border.all(
                                          color: selectedRisk == 'Moderate' ? const Color(0xff283F9E) : Colors.transparent,
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Moderate',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff41D974)),
                                                ),
                                                Text(
                                                  'Focused on superior long-term returns with moderate risk',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xff676B94)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Radio<String>(
                                            value: 'Moderate',
                                            groupValue: selectedRisk,
                                            onChanged: (String? value) {
                                              print("Selected Value: $value"); // Add this line to debug
                                              setState(() {
                                                selectedRisk = value;
                                                val = 1;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(bottom: 20),
                                    height: 105,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFFFFFF),
                                        borderRadius: const BorderRadius.all(Radius.circular(15)),
                                        border: Border.all(
                                          color: selectedRisk == 'Aggressive' ? const Color(0xff283F9E) : Colors.transparent,
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Aggressive',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                      color: Color(0xff4DA6FF)),
                                                ),
                                                Text(
                                                  'High- risk approach to maximize returns over the long-term',
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w500,
                                                      color: Color(0xff676B94)),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Radio<String>(
                                            value: 'Aggressive',
                                            groupValue: selectedRisk,
                                            onChanged: (String? value) {
                                              print("Selected Value: $value"); // Add this line to debug
                                              setState(() {
                                                selectedRisk = value;
                                                val = 2;
                                              });
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 65,
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.pop(context);
                                        switch (val.toInt()) {
                                          case 0:
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ConservativeRisk()));
                                          case 1:
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => ModerateRisk()));
                                          case 2:
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => AggressiveRisk()));
                                          default:
                                            null;
                                        }
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
                                        'Confirm',
                                        style: TextStyle(
                                            color: white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,)
                                  // Add other widgets here
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    );
                  }));
            },
            child: Icon(
              Icons.more_vert_outlined,
            ),
          ),
        ],
        toolbarHeight: 70.0, // Set the height you want
        title: const Text(
          'Recommendations',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  child: TextField(
                    cursorColor: black,
                    decoration: kTextFieldDecoration.copyWith(
                      // EAEBEC
                      contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      filled: true,
                      fillColor: transparent,
                      focusColor: white,
                      hintText: 'Search “Moderate”',
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEAEBEC)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: black03,
                      ),
                      // suffixIcon: GestureDetector(
                      //   onTap: () {},
                      //   child: Icon(
                      //     Icons.visibility_outlined,
                      //     color: black03,
                      //   ),
                      // ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                recommends(company: 'Lively Inc.', shares: 'LIVELY', amount: '450,000', interest: '+200,000 (150%)', color: green),
                recommends(company: 'Netflix Inc.', shares: 'NETFLIX', amount: '23,000', interest: '+9,000 (70%)', color: green),
                recommends(company: 'Hugo Boss Inc.', shares: 'HUGO BOSS', amount: '7,000', interest: '-2,000 (-40%)', color: red),
                recommends(company: 'Netflix Inc.', shares: 'NETFLIX', amount: '23,000', interest: '+9,000 (70%)', color: green),
                recommends(company: 'Hugo Boss Inc.', shares: 'HUGO BOSS', amount: '7,000', interest: '-2,000 (-40%)', color: red),
                recommends(company: 'Netflix Inc.', shares: 'NETFLIX', amount: '23,000', interest: '+9,000 (70%)', color: green),
                recommends(company: 'Hugo Boss Inc.', shares: 'HUGO BOSS', amount: '7,000', interest: '-2,000 (-40%)', color: red),
                recommends(company: 'Lively Inc.', shares: 'LIVELY', amount: '450,000', interest: '+200,000 (150%)', color: green),
              ],
            ),
          ),
        ),
      ),
    );
  }

   recommends({required String company, required String shares, required String amount, required String interest, required Color color}) {
    return Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 72,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
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
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 23.5,
                        backgroundColor: Color(0xffEDEFF8),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            company,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: black),
                          ),
                          Text(
                            shares,
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff83848B)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '₦$amount',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: black),
                          ),
                          Text(
                            interest,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: color),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}
