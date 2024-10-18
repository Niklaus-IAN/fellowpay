import 'package:dotted_border/dotted_border.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Home/notification.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Home/viewTransaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Logic/basicLogic.dart';
import '../../../Styles/colours.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.25,
          //   color: Colors.red,
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.75,
          //   decoration: BoxDecoration(
          //     color: white,
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(40.0),  // Adjust the radius value as needed
          //       topRight: Radius.circular(40.0), // Adjust the radius value as needed
          //     ),
          //   ),
          // ),

          // Top container positioned at the top with height 0.25
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/image 1.png'),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: 42,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: constraints.maxWidth *
                                      0.75, // 70% of the parent container's width
                                  height: 42,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Good Morning, Mayor',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: constraints.maxWidth *
                                      0.1, // 70% of the parent container's width
                                  height: 4,
                                  color: white,
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => NotificationChange()),
                                    );
                                  },
                                  child: SizedBox(
                                    width: 42,
                                    height: 42,
                                    child: CircleAvatar(
                                      backgroundColor: white,
                                      child:
                                          Icon(Icons.notifications_none_rounded),
                                    ),
                                  ),
                                )
                              ],
                            );
                          },
                        ))
                  ],
                ),
              ),
            ),
          ),

          // Bottom container positioned below the top one with height 0.75
          Positioned(
            top: MediaQuery.of(context).size.height *
                0.25, // Starts where the top container ends
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      40.0), // Adjust the radius value as needed
                  topRight: Radius.circular(
                      40.0), // Adjust the radius value as needed
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height *
                0.18, // Starts where the top container ends
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.2), // Shadow color
                      offset: Offset(0.0, 7.0), // Offset from right
                      blurRadius: 8, // Spread of the shadow
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * 0.6,
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            color: blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total Balance', style: TextStyle(
                                  fontSize: 18, color: Color(0xff263238)
                                ),),
                                SizedBox(height: 8,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: '₦',
                                        style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff263238),
                                        ),
                                        children: [
                                          WidgetSpan(
                                            child: SizedBox(
                                              width: 5,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '250,000.04',
                                            style: TextStyle(
                                              fontSize: 34,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xff263238),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Icon(Icons.visibility_outlined, color: white, size: 24,),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: Text('0679611254', style: TextStyle(
                                            fontSize: 20, color: Color(0xff263238)
                                        ),),
                                      ),
                                      SizedBox(width: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(bottom: 10),
                                        child: SvgPicture.asset(
                                          'assets/icons/Frame 1000000891.svg',
                                          semanticsLabel: 'My SVG Image',
                                          height: 35,
                                          width: 35,
                                        ),
                                      ),
                                      Expanded(
                                        child: SvgPicture.asset(
                                          'assets/icons/Group 8748.svg',
                                          fit: BoxFit.fill, // Ensures the SVG scales to fit the available space
                                          semanticsLabel: 'My SVG Image',
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        // DottedBorder(
                        //   borderType: BorderType.RRect,
                        //   radius: Radius.circular(12),
                        //   padding: EdgeInsets.all(6),
                        //   child: ClipRRect(
                        //
                        //     child: Container(
                        //       height: 200,
                        //       width: 120,
                        //       color: Colors.amber,
                        //     ),
                        //   ),
                        // ),
                        DottedBorder(
                          borderType: BorderType.RRect,
                          radius: Radius.circular(10),
                          padding: EdgeInsets.zero,
                          borderPadding: EdgeInsets.only(bottom: 20, left: 5, right: 5),
                          dashPattern: [15, 5],
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: Container(
                              height: constraints.maxHeight * 0.23,
                              decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SvgPicture.asset(
                                        'assets/icons/Group.svg',
                                        fit: BoxFit.contain, // Ensures the SVG scales to fit the available space
                                        semanticsLabel: 'My SVG Image',
                                        width: 60,
                                      ),
                                    ),
                                    Text('2000', style: TextStyle(
                                        fontSize: 18, color: Color(0xff263238), fontWeight: FontWeight.w500
                                    ),),
                                    Text(' Points', style: TextStyle(
                                        fontSize: 18, color: Color(0xff263238)
                                    ),),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Text('Rewards', style: TextStyle(
                                            fontSize: 18, color: Color(0xff263238)
                                        ),),
                                        SizedBox(width: 8,),
                                        Icon(Icons.arrow_forward, size: 22, color: Color(0xff263238),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: constraints.maxHeight * 0.15,
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.wallet_outlined, color: white,),
                                    SizedBox(width: 8,),
                                    Text('Top Up', style: TextStyle(
                                        fontSize: 18, color: white, fontWeight: FontWeight.w500
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 2,),
                            Expanded(
                              child: Container(
                                height: constraints.maxHeight * 0.15,
                                decoration: BoxDecoration(
                                  color: black,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.file_upload_outlined, color: white,),
                                    SizedBox(width: 8,),
                                    Text('Transfer', style: TextStyle(
                                        fontSize: 18, color: white, fontWeight: FontWeight.w500
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 2,),
                            Expanded(
                              child: Container(
                                height: constraints.maxHeight * 0.15,
                                decoration: BoxDecoration(
                                  color: black,
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.more_horiz_outlined, color: white,),
                                    SizedBox(width: 8,),
                                    Text('More', style: TextStyle(
                                        fontSize: 18, color: white, fontWeight: FontWeight.w500
                                    ),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height *
                0.54, // Starts where the top container ends
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Quick Transaction', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                        Icon(Icons.keyboard_arrow_down_rounded, size: 35, weight: 0.2, grade: -25,)
                      ],
                    ),
                    Wrap(
                      spacing: 10,
                      children: [
                        Utilities(image: 'assets/images/Frame 1000000894.png', text: 'Airtime/Data', onTap: () {  }),
                        Utilities(image: 'assets/images/Frame 1000000894-1.png', text: 'Transfer', onTap: () {  }),
                        Utilities(image: 'assets/images/Frame 1000000894-2.png', text: 'Pay Bill', onTap: () {  }),
                        Utilities(image: 'assets/images/Frame 1000000894-3.png', text: 'Save', onTap: () {  }),
                        Utilities(image: 'assets/images/Frame 1000000895.png', text: 'Investment', onTap: () {  }),
                        Utilities(image: 'assets/images/Frame 1000000896.png', text: 'Pay Internet/Cable', onTap: () {  })
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Transactions', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                          GestureDetector(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => AllTransactions()),
                                );
                              },
                              child: Text('See All', style: TextStyle( fontSize: 14),)),
                        ],
                      ),
                    ),
                    Transactions(type: 'Received', name: 'Mayor Olunuga', amount: 2000, date: '1/02/2024', narration: '“Enjoy Yourself bro”'),
                    Transactions(type: 'Sent', name: 'Olayinka Iyioluwa', amount: 45000, date: '1/02/2024', narration: '“Kudos”'),
                    Transactions(type: 'Sent', name: 'Christabel Rodriguez', amount: 100000, date: '1/02/2024', narration: '""'),
                    Transactions(type: 'Received', name: 'Jane Smith', narration: '"Refund"', amount: 300000, date: '10/03/2024'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Transactions({required String type, required String name, required String narration, required int amount, required String date}) {
    // Manually format the amount with commas
    final formattedAmount = formatAmount(amount);
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
                      children: [
                        Icon( type == 'Sent' ? Icons.arrow_upward_rounded : Icons.arrow_downward_rounded, size: 25, color: type == 'Sent' ? Colors.red : Colors.green,),
                        SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                            SizedBox(height: 5,),
                            Text( narration,style: TextStyle(fontSize: 12, color: Color(0xff1E1E1E)),)
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '₦',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: black
                                ),
                                children: [
                                  WidgetSpan(
                                    child: SizedBox(
                                      width: 3,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '$formattedAmount',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                        color: black
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(date, style: TextStyle(fontSize: 12, color: Color(0xff1E1E1E)),)
                          ],
                        ),
                      ],
                    ),
    );
  }

  Utilities({required Function() onTap, required String image, required String text}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
                        onTap: onTap,
                        child: Column(
                          children: [
                            Image.asset(image),
                            SizedBox(height: 5,),
                            Text(text, style: TextStyle(fontSize: 12),)
                          ],
                        ),
                      ),
    );
  }
}
