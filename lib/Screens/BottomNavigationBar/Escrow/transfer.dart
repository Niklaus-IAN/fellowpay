import 'package:fellowpay/Screens/BottomNavigationBar/Escrow/sendmoneytocoinifys.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Home/notification.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Escrow/sendmoney.dart';
import 'package:flutter/material.dart';



class TransferScreen extends StatefulWidget {
  @override
  _TransferScreenState createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Transfer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70.0, // Set the height you want
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            TransferOption(
              label: 'FellowPay Account',
              icon: Icons.account_balance_wallet_outlined,
              onTap: () {
                // Handle Coinify Account transfer
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SendMoneyToCoinify(), // Directly navigating to TransferScreen
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            TransferOption(
              label: 'Local Bank',
              icon: Icons.account_balance_outlined,
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SendMoneyScreen(), // Directly navigating to TransferScreen
                  ),
                );
                // NHandle Local Bank transfer
              },
            ),
            SizedBox(height: 30),
            Text.rich(
              TextSpan(
                text: 'Transfers to ',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.7),
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Coinify Accounts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(text: ' earns you more '),
                  TextSpan(
                    text: 'Cointokens.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransferOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  TransferOption({required this.label, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color:  Color(0xFF1DA1FA),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SizedBox(width: 16),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)

              ),
              child: Icon(
                icon,
                color: Color(0xFF1DA1FA),
                size: 24,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
