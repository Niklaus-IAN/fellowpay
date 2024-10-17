import 'package:fellowpay/Billspayment/airtime.dart';
import 'package:fellowpay/Billspayment/billspayment.dart';
import 'package:fellowpay/Billspayment/lightbillpayment.dart';
import 'package:fellowpay/Billspayment/payforairtime.dart';
import 'package:fellowpay/Billspayment/searchcontacts.dart';
import 'package:fellowpay/Screens/SplashScreen/splashscreen.dart';
import 'package:fellowpay/Transfer/chooseabank.dart';
import 'package:fellowpay/Transfer/moneyfailedcoinify.dart';
import 'package:fellowpay/Transfer/moneysentcoinifysuccessful.dart';
import 'package:fellowpay/Transfer/sendmoney.dart';
import 'package:fellowpay/Transfer/sendmoneyinputcoinify.dart';
import 'package:fellowpay/Transfer/sendmoneytocoinifys.dart';
import 'package:fellowpay/Transfer/transfer.dart';
import 'package:fellowpay/Transfer/transfertobank.dart';
import 'package:fellowpay/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:fellowpay/login/confirmcreateforgetpassword.dart';
import 'package:fellowpay/login/createforgetpassword.dart';
import 'package:fellowpay/login/forgetpassword.dart';
import 'package:fellowpay/login/signin.dart';
import 'package:fellowpay/register/about_yourself.dart';
import 'package:fellowpay/register/allverificationsuccessful.dart';
import 'package:fellowpay/register/birthday.dart';
import 'package:fellowpay/register/create_password.dart';
import 'package:fellowpay/register/email.dart';
import 'package:fellowpay/register/email_verified.dart';
import 'package:fellowpay/register/opt_verification.dart';
import 'package:fellowpay/register/password_created.dart';
import 'package:fellowpay/register/register.dart';

import 'package:fellowpay/register/verifyEmail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Styles/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        splitScreenMode: true,
        minTextAdapt: true,
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              fontFamily: 'Inter',
              colorScheme: ColorScheme.fromSeed(seedColor: blue),
              useMaterial3: true,
              primaryColor: white
          ),
          home: MyHomePage(),
        );
      }
    );
  }
}



