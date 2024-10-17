import 'package:fellowpay/Transfer/sendmoney.dart';
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
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back action
          },
        ),
        centerTitle: true,
        title: Text(
          'Transfer',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            TransferOption(
              label: 'Coinify Account',
              icon: Icons.account_balance_wallet_outlined,
              onTap: () {
                // Handle Coinify Account transfer
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
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
