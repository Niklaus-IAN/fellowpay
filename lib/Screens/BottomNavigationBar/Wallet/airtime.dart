import 'package:fellowpay/Screens/BottomNavigationBar/Wallet/payforairtime.dart';
import 'package:fellowpay/Screens/BottomNavigationBar/Wallet/searchcontacts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../Styles/colours.dart';

class Airtime extends StatefulWidget {
  @override
  _AirtimeState createState() => _AirtimeState();
}

class _AirtimeState extends State<Airtime> {
  String selectedNetwork = 'Choose Network';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Airtime 🇳🇬', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70.0, // Set the height you want
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6,horizontal: 33),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Wallet Balance: ₦1,565,520.57',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: white,
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height:
                        MediaQuery.of(context)
                            .size
                            .height *
                            0.30,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedNetwork = 'MTN';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  // width: 320,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(color: Color(0xffEEEEF0), width: 1, style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('MTN', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                      Image.asset('assets/images/circleMtn.png')
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedNetwork = 'Airtel';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  // width: 320,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color(0xffEEEEF0), width: 1, style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('Airtel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                      Image.asset('assets/images/circleAirtel.png')
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedNetwork = 'GLO';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  // width: 320,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color(0xffEEEEF0), width: 1, style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('GLO', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                      Image.asset('assets/images/circleGlo.png')
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selectedNetwork = '9Mobile';
                                  });
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 50,
                                  // width: 320,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(color: Color(0xffEEEEF0), width: 1, style: BorderStyle.solid),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text('9Mobile', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                                      Image.asset('assets/images/circle9mobile.png')
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEF0),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(selectedNetwork, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 53,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFEEEEF0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Input Number',
                  suffixIcon: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchContacts()));
                    },
                    child: Icon(
                        Icons.contact_phone
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              height: 53,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFEEEEF0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Input Number',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 3.5,
              children: [
                SizedBox(
                  // width: double.infinity,
                  width: 150,
                  height: 43,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '₦100.00',
                      style: TextStyle(fontSize: 18, color: white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 43,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '₦500.00',
                      style: TextStyle(fontSize: 18, color: white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 43,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '₦1000.00',
                      style: TextStyle(fontSize: 18, color: white),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 43,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      elevation: 3.0,
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '₦2000.00',
                      style: TextStyle(fontSize: 18, color: white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Recent Purchases',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset('assets/images/mtn.png'),
                    title: Text('MTN', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    subtitle: Text('07038473798', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff9D9B9B)),),
                    trailing: Text('9.25AM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/airtel.png'),
                    title: Text('Airtel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    subtitle: Text('07038473798', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff9D9B9B)),),
                    trailing: Text('9.25AM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
                  ),
                  ListTile(
                    leading: Image.asset('assets/images/etisalat.png'),
                    title: Text('Etisalat', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
                    subtitle: Text('07038473798', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff9D9B9B)),),
                    trailing: Text('9.25AM', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff000000)),),
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
