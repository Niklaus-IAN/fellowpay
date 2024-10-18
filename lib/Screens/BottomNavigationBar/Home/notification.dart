import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';
import '../../../Widgets/toggler.dart';

class NotificationChange extends StatefulWidget {
  const NotificationChange({super.key});

  @override
  State<NotificationChange> createState() => _NotificationChangeState();
}

class _NotificationChangeState extends State<NotificationChange> {
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
          'Notification',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              notify(title: 'General Notification', status: true),
              notify(title: 'Sound', status: true),
              notify(title: 'Security', status: false),
              notify(title: 'Payments', status: true),
              notify(title: 'Cashback', status: false),
              notify(title: 'App Updates', status: true),
              notify(title: 'New Services Available', status: true),
              notify(title: 'New Tips Available', status: true),
              // reuseButton(onTap: () {}, text: 'Save')
            ],
          ),
        ),
      ),
    );
  }
}
