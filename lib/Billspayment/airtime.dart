import 'package:flutter/material.dart';

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
        title: Text('Airtime 🇳🇬'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Back action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Wallet Balance: ₦1,565,520.57',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      height: 250,
                      child: Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.yellow,
                              child: Icon(Icons.sim_card),
                            ),
                            title: Text('MTN'),
                            onTap: () {
                              setState(() {
                                selectedNetwork = 'MTN';
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Icon(Icons.sim_card),
                            ),
                            title: Text('Airtel'),
                            onTap: () {
                              setState(() {
                                selectedNetwork = 'Airtel';
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.green,
                              child: Icon(Icons.sim_card),
                            ),
                            title: Text('GLO'),
                            onTap: () {
                              setState(() {
                                selectedNetwork = 'GLO';
                              });
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blue,
                              child: Icon(Icons.sim_card),
                            ),
                            title: Text('9Mobile'),
                            onTap: () {
                              setState(() {
                                selectedNetwork = '9Mobile';
                              });
                              Navigator.pop(context);
                            },
                          ),
                        ],
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
                    Text(selectedNetwork),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
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
            SizedBox(height: 16.0),
            TextField(
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
            SizedBox(height: 16.0),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 2.5,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '100.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '100.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '100.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed:(){},

                    // Handle next button functionality

                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      '100.00',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Recent Purchases',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      child: Icon(Icons.sim_card),
                    ),
                    title: Text('MTN'),
                    subtitle: Text('07038473798'),
                    trailing: Text('9.25AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.sim_card),
                    ),
                    title: Text('Airtel'),
                    subtitle: Text('09043568456'),
                    trailing: Text('9.25AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.sim_card),
                    ),
                    title: Text('9Mobile'),
                    subtitle: Text('08092135478'),
                    trailing: Text('Yesterday'),
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
