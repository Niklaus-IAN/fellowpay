import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/dialog.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        toolbarHeight: 80.0, // Set the height you want
        title: Text(
          'Contact Us',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You can contact us through any of these medium',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400, color: black),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.30,
                            width: MediaQuery.of(context).size.width,
                            child: StatefulBuilder(builder:
                                (BuildContext context, StateSetter setState) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 25),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Contact Us via Facebook"),
                                    // Add your content here
                                    Text(
                                      'Logout',
                                      style: TextStyle(
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xffFD2727)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      height: 2,
                                      color: Color(0xffC7CBDF),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Are you sure you want to log out?',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          color: black),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              splashFactory:
                                                  NoSplash.splashFactory,
                                              backgroundColor:
                                                  Color(0xffC9D0FF),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    50), // Change the border radius here
                                              ),
                                            ),
                                            child: Text(
                                              'Cancel',
                                              style: TextStyle(
                                                  color: white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: TextButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              splashFactory:
                                                  NoSplash.splashFactory,
                                              backgroundColor: blue,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    50), // Change the border radius here
                                              ),
                                            ),
                                            child: Text(
                                              'Yes, Logout',
                                              style: TextStyle(
                                                  color: white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                          );
                        });
                  },
                  child: abouts(
                      'assets/icons/Facebook.svg', 'Continue with Facebook')),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return successDialog(context, 'Password Change Successful!');
                      },
                    );
                  },
                  child:
                      abouts('assets/icons/Google.svg', 'Continue with Gmail')),
              abouts('assets/icons/Facebook.svg', 'Continue with Facebook'),
            ],
          ),
        ),
      ),
    );
  }


  Padding abouts(String svgAssets, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
              color: Color(0xffEEEEF0), width: 1, style: BorderStyle.solid),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              svgAssets,
              semanticsLabel: 'My SVG Image',
              // height: 400,
              // width: 400,
              // fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 19, fontWeight: FontWeight.w500, color: black),
            ),
          ],
        ),
      ),
    );
  }
}


