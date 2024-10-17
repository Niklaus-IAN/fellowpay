import 'package:fellowpay/Transfer/navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // List of all the pages to navigate between
  final List<Widget> _pages = [
    HomeScreen(),
    SettingsNavigator(),
    WalletScreen(),
    FinanceScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Color(0xFF1DA1FA)
        ,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows),
            label: 'Escrow',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Finance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// Dummy Screens for each page
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Page'));
  }
}

class EscrowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Escrow Page'));
  }
}

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Wallet Page'));
  }
}

class FinanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Finance Page'));
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Account Page'));
  }
}
