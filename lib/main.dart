import 'package:fellowpay/Screens/BottomNavigationBar/Account/Settings/contactUs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Screens/BottomNavigationBar/Account/Settings/pinReset.dart';
import 'Screens/BottomNavigationBar/Account/Settings/security.dart';
import 'Screens/BottomNavigationBar/Home/Investment/aiPayments.dart';
import 'Screens/BottomNavigationBar/Home/Investment/aiSuggestion.dart';
import 'Screens/BottomNavigationBar/Home/home.dart';
import 'Screens/SplashScreen/splashscreenthree.dart';
import 'Screens/SplashScreen/splashscreentwo.dart';
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
          home: const AiPayment(),
        );
      }
    );
  }
}



