import 'package:fellowpay/Screens/BottomNavigationBar/Wallet/airtime.dart';
import 'package:fellowpay/Styles/colours.dart';
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
        centerTitle: false,
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
        toolbarHeight: 60.0, // Set the height you want
        title: Text(
          'Bills Payments',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xff393939)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Grid of icons and labels
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildGridItem(Icons.attach_money, 'Investments', () {}),
                  _buildGridItem(Icons.wifi, 'Pay Internet', () {}),
                  _buildGridItem(Icons.save, 'Save', () {}),
                  _buildGridItem(Icons.phone_android, 'Airtime/Data', () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Airtime()));
                  }),
                  _buildGridItem(Icons.receipt, 'Paybill', () {}),
                  _buildGridItem(Icons.attach_money, 'Investments', () {}),
                  _buildGridItem(Icons.wifi, 'Pay Internet', () {}),
                  _buildGridItem(Icons.save, 'Save', () {}),
                  _buildGridItem(Icons.phone_android, 'Airtime/Data', () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create grid item
  Widget _buildGridItem(IconData icon, String label, void Function() onTap) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xffC9D0FF),
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFE0E0E0))),
            child: Icon(
              icon,
              size: 40,
              color: blue,
            ),
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

// void main() {
//   runApp(MaterialApp(
//     home: BillsPayment(),
//   ));
// }
