import 'package:fellowpay/Screens/BottomNavigationBar/Account/Settings/otpPinReset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/textFields.dart';

class ResetPin extends StatefulWidget {
  const ResetPin({super.key});

  @override
  State<ResetPin> createState() => _ResetPinState();
}

class _ResetPinState extends State<ResetPin> {
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
          'PIN Reset',
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
                'Please kindly input your email.',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500, color: black),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email Address',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500, color: black),
                ),
              ),
              SizedBox(height: 8,),
              SizedBox(
                height: 70,
                child: TextField(
                  cursorColor: black,
                  decoration: kTextFieldDecoration.copyWith(
                    filled: true,
                    fillColor: Color(0xffEEEEF0),
                    focusColor: white,
                    hintText: 'people@youremail.com',
                    // prefixIcon: Icon(
                    //   Icons.lock_outline,
                    //   color: black03,
                    // ),
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
              SizedBox(height: 50,),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpReset()));
                    },
                    style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10), // Change the border radius here
                      ),
                    ),
                    child: Text(
                      'Send Code',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),),
              ),
              SizedBox(height: 50,),
              SizedBox(
                height: 250,
                width: 250,
                child: SvgPicture.asset(
                  'assets/images/Group 47133.svg',
                  semanticsLabel: 'My SVG Image',
                  // height: 400,
                  // width: 400,
                  // fit: BoxFit.contain, // Adjust this as needed (e.g., BoxFit.cover, BoxFit.fill)
                ),
              ),
              SizedBox(height: 50,),
              RichText(
                text: TextSpan(
                  text: 'Remember PIN?',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: black
                  ),
                  children: [
                    WidgetSpan(
                      child: SizedBox(
                        width: 5,
                      ),
                    ),
                    TextSpan(
                      text: 'Enter Old PIN To Reset',
                      style: TextStyle(
                          // fontSize: 17,
                          // fontWeight: FontWeight.w400,
                          color: blue
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            ],),
        ),
      ),
    );
  }
}
