import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Wallet/billspayment.dart';
import '../../Styles/colours.dart';
import 'Escrow/transfer.dart';
import 'Finance/aiSuggestion.dart';
import 'Home/home.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // List of all the pages to navigate between
  final List<Widget> _pages = [
    HomeScreen(),
    TransferScreen(),
    BillsPayment(),
    AISuggestion(),
    AccountScreen(),
  ];


  // final List<Widget> _pages = [
  //   HomePage(),
  //   EscrowPage(),
  //   WalletPage(),
  //   FinancePage(),
  //   AccountPage(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 13,
        selectedItemColor: blue,
        unselectedItemColor: black,
        unselectedLabelStyle: TextStyle(color: black),
        selectedLabelStyle:
        TextStyle(color: blue, fontWeight: FontWeight.w600),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Home.svg',
              semanticsLabel: 'My SVG Image',
              // height: 42.h,
              // width: 42.w,
              // height: 40,
              // width: 0,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Home.svg',
              semanticsLabel: 'My SVG Image',
              color: blue,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Escrow.svg',
              semanticsLabel: 'My SVG Image',
              // height: 42.h,
              // width: 42.w,
              // height: 40,
              // width: 0,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Escrow.svg',
              semanticsLabel: 'My SVG Image',
              // height: 25,
              // width: 25,
              color: blue,
            ),
            label: 'Escrow',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Wallet.svg',
              semanticsLabel: 'My SVG Image',
              // height: 42.h,
              // width: 42.w,
              // height: 40,
              // width: 0,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Wallet.svg',
              semanticsLabel: 'My SVG Image',
              // height: 25,
              // width: 25,
              color: blue,
            ),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Finance.svg',
              semanticsLabel: 'My SVG Image',
              // height: 42.h,
              // width: 42.w,
              // height: 40,
              // width: 0,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Finance.svg',
              semanticsLabel: 'My SVG Image',
              // height: 25,
              // width: 25,
              color: blue,
            ),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Account.svg',
              semanticsLabel: 'My SVG Image',
              // height: 42.h,
              // width: 42.w,
              // height: 40,
              // width: 0,
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/Account.svg',
              semanticsLabel: 'My SVG Image',
              // height: 25,
              // width: 25,
              color: blue,
            ),
            label: 'Account',
          )
        ],
      ),
    );
  }
}


class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Account Page'));
  }
}