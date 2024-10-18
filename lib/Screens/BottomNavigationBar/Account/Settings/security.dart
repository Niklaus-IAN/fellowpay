import 'package:fellowpay/Screens/BottomNavigationBar/Account/Settings/changePin.dart';
import 'package:fellowpay/Widgets/buttons.dart';
import 'package:flutter/material.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/toggler.dart';

class Secure01 extends StatefulWidget {
  const Secure01({super.key});

  @override
  State<Secure01> createState() => _Secure01State();
}

class _Secure01State extends State<Secure01> {
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
          'Security',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              notify(title: 'Remember Me', status: true),
              notify(title: 'Google Authenticator', status: true),
              notify(title: 'Dark Mode', status: false),
              SizedBox(height: 15,),
              reuseButton(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChangePin()),
                );
              }, text: 'Change Pin'),
              SizedBox(height: 25,),
              reuseButton(onTap: (){}, text: 'Change Password'),
              // reuseButton(onTap: () {}, text: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
