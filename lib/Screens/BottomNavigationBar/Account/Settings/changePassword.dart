import 'package:flutter/material.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/buttons.dart';
import '../../../../Widgets/textFields.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
          'Change Password',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              // notify(title: 'Remember Me', status: true),
              // notify(title: 'Google Authenticator', status: true),
              // notify(title: 'Dark Mode', status: false),
              // SizedBox(height: 15,),
              // reuseButton(onTap: (){}, text: 'Change Pin'),
              // SizedBox(height: 25,),
              // reuseButton(onTap: (){}, text: 'Change Password'),
              // reuseButton(onTap: () {}, text: 'Save')
              TextField(
                cursorColor: black,
                decoration: kTextFieldDecoration.copyWith(
                  filled: true,
                  fillColor: transparent,
                  focusColor: white,
                  hintText: 'Input Old Password',
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
              SizedBox(height: 20,),
              TextField(
                cursorColor: black,
                decoration: kTextFieldDecoration.copyWith(
                  filled: true,
                  fillColor: transparent,
                  focusColor: white,
                  hintText: 'Input New Password',
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
              SizedBox(height: 20,),
              TextField(
                cursorColor: black,
                decoration: kTextFieldDecoration.copyWith(
                  filled: true,
                  fillColor: transparent,
                  focusColor: white,
                  hintText: 'Confirm New Password',
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
              SizedBox(height: 50,),
              reuseButton(onTap: (){

              }, text: 'Change Password')
            ],
          ),
        ),
      ),
    );
  }
}
