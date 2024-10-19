import 'package:flutter/material.dart';

import '../../../Logic/basicLogic.dart';
import '../../../Styles/colours.dart';


class AllTransactions extends StatefulWidget {
  const AllTransactions({super.key});

  @override
  State<AllTransactions> createState() => _AllTransactionsState();
}

class _AllTransactionsState extends State<AllTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 1,
        toolbarHeight: 80.0, // Set the height you want
        title: Text(
          'History',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xff3A3A3A),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
            ),
            Transacts(type: 'type', name: 'Chiamaka Winifred', time: '08:23 AM', narration: 'Payment Received', amount: 5000.00),
            Transacts(type: 'type', name: 'Olunuga Mayowa', time: '08:23 AM', narration: 'Payment Sent', amount: 9000.00),
            Transacts(type: 'type', name: 'Chiamaka Winifred', time: '10:00 AM', narration: 'Payment Received', amount: 603500.00),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Yesterday',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: black,
                ),
              ),
            ),
            Transacts(type: 'type', name: 'Chiamaka Winifred', time: '08:23 AM', narration: 'Payment Received', amount: 5000.00),
            Transacts(type: 'type', name: 'Olunuga Mayowa', time: '08:23 AM', narration: 'Payment Sent', amount: 9000.00),
            Transacts(type: 'type', name: 'Chiamaka Winifred', time: '10:00 AM', narration: 'Payment Received', amount: 1003500.00),
          ],
        ),
      ),
    );
  }


  Transacts({required String type, required String name, required String time, required String narration, required double amount}) {
    // Manually format the amount with commas
    final formatAmount = formattedAmount(amount);
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.min, // Use min to shrink-wrap the Row
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.lightGreenAccent,
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                SizedBox(height: 8,),
                Text( '$time $narration',style: TextStyle(fontSize: 12.5, color: black, fontWeight: FontWeight.w400),),
              ],
            ),
            SizedBox(width: 15), // Space between text and amount
            RichText(
              textAlign: TextAlign.right, // Align text to the right
              text: TextSpan(
                text: '  + ₦ ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: black
                ),
                children: [
                  WidgetSpan(
                    child: SizedBox(
                      width: 3,
                    ),
                  ),
                  TextSpan(
                    text: formatAmount,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: black
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
