import 'package:flutter/material.dart';

class BillsPayment extends StatefulWidget {
  @override
  _BillsPaymentState createState() => _BillsPaymentState();
}

class _BillsPaymentState extends State<BillsPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0, // Hides the app bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bill Payments title
            Text(
              'Bill payments',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Grid of icons and labels
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,

                children: [
                  _buildGridItem(Icons.attach_money, 'Investments'),
                  _buildGridItem(Icons.wifi, 'Pay Internet'),
                  _buildGridItem(Icons.save, 'Save'),
                  _buildGridItem(Icons.phone_android, 'Airtime/Data'),
                  _buildGridItem(Icons.receipt, 'Paybill'),
                  _buildGridItem(Icons.attach_money, 'Investments'),
                  _buildGridItem(Icons.wifi, 'Pay Internet'),
                  _buildGridItem(Icons.save, 'Save'),
                  _buildGridItem(Icons.phone_android, 'Airtime/Data'),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }

  // Helper function to create grid item
  Widget _buildGridItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xFFE0E0E0)
            )
          ),
          child: Icon(
            icon,
            size: 40,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: BillsPayment(),
  ));
}
