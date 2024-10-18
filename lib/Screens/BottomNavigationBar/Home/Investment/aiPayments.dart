import 'package:flutter/material.dart';

import '../../../../Styles/colours.dart';
import '../../../../Widgets/dialog.dart';

class AiPayment extends StatefulWidget {
  const AiPayment({super.key});

  @override
  State<AiPayment> createState() => _AiPaymentState();
}

class _AiPaymentState extends State<AiPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
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
        iconTheme: IconThemeData(color: white),
        actions: [
          Icon(
            Icons.more_vert_outlined,
            color: white,
          ),
        ],
        backgroundColor: blue,
        toolbarHeight: 80.0, // Set the height you want
        title: Text(
          'AI Payment',
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.w600, color: Color(0xffffffff)),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    // height: 80,
                    width: 180,
                    child: Card(
                      elevation: 0.05,
                      color: Color(0xffD6DCE8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)), // Correct way to apply border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Income',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600, color: black),
                            ),
                            Text(
                              '+₦15,500.90',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600, color: black),
                            ),
                          ],),
                      ),
                    ),
                  ),
                  SizedBox(
                    // height: 80,
                    width: 180,
                    child: Card(
                      elevation: 0.05,
                      color: Color(0xffD6DCE8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)), // Correct way to apply border radius
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Expenses',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600, color: black),
                            ),
                            Text(
                              '-₦12,200.34',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600, color: black),
                            ),
                          ],),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // const Spacer(), // This pushes the bottom Container down
            Container(
              height: MediaQuery.of(context).size.height * 0.74,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding: const EdgeInsets.only(left: 18,right: 18,top: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reports',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff323236)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Color(0xffC2C2C2),
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      report(tap: (){}, icon: Icons.import_export, type: 'Transfer', about: 'Bank Income', date: '14 Aug, 2022', amount: '+₦80,000'),
                      report(tap: (){}, icon: Icons.phone_iphone_outlined, type: 'Digital Payment', about: 'Data Subscription', date: '11 Aug, 2022', amount: '-₦1,500'),
                      report(tap: (){}, icon: Icons.tv_rounded, type: 'Utilities', about: 'Cable Subscription', date: '10 Aug, 2022', amount: '-₦4,700'),
                      report(tap: (){}, icon: Icons.school_outlined, type: 'Education', about: 'School Fees', date: '12 Aug, 2022', amount: '-₦80,000'),
                      report(tap: (){}, icon: Icons.phone_iphone_outlined, type: 'Digital Payment', about: 'Data Subscription', date: '11 Aug, 2022', amount: '-₦1,500'),
                      report(tap: (){}, icon: Icons.tv_rounded, type: 'Utilities', about: 'Cable Subscription', date: '10 Aug, 2022', amount: '-₦4,700'),
                      report(tap: (){}, icon: Icons.school_outlined, type: 'Education', about: 'School Fees', date: '12 Aug, 2022', amount: '-₦80,000'),
                      report(tap: (){}, icon: Icons.phone_iphone_outlined, type: 'Digital Payment', about: 'Data Subscription', date: '11 Aug, 2022', amount: '-₦1,500'),
                      report(tap: (){}, icon: Icons.tv_rounded, type: 'Utilities', about: 'Cable Subscription', date: '10 Aug, 2022', amount: '-₦4,700'),
                      report(tap: (){}, icon: Icons.school_outlined, type: 'Education', about: 'School Fees', date: '12 Aug, 2022', amount: '-₦80,000'),
                      report(tap: (){}, icon: Icons.phone_iphone_outlined, type: 'Digital Payment', about: 'Data Subscription', date: '11 Aug, 2022', amount: '-₦1,500'),
                      report(tap: (){}, icon: Icons.tv_rounded, type: 'Utilities', about: 'Cable Subscription', date: '10 Aug, 2022', amount: '-₦4,700'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
