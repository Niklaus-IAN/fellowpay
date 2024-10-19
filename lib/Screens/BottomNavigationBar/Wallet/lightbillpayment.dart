import 'package:flutter/material.dart';

class LightBillPayment extends StatefulWidget {
  @override
  _LightBillPaymentState createState() => _LightBillPaymentState();
}

class _LightBillPaymentState extends State<LightBillPayment> {
  String? selectedNetwork;
  String? selectedPackage;
  String meterNumber = '';
  String amount = '';
  void _showConfirmationSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close button
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              // Amount
              Center(
                child: Text(
                  '₦57,526',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Transaction details
              _buildDetailRow('Bank', 'Coinify'),
              _buildDetailRow('User ID', 'Fredo65'),
              _buildDetailRow('Account Name', 'Fred Ogbonnaya'),
              _buildDetailRow('Amount', '₦57,526'),
              _buildDetailRow('Transaction Fee', '₦0.00'),
              SizedBox(height: 20),
              // Wallet Balance
              Center(
                child: Text(
                  'Wallet Balance: ₦1,565,520.57',
                  style: TextStyle(
                    color: Color(0xFF1DA1FA),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Confirm button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Color(0xFF1DA1FA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Handle confirm action

                    // _showPin(context);
                  },
                  child: Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  Widget _buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
  final List<String> serviceProviders = [
    'Abuja Electricity - AEDC',
    'Benin Electricity - BEDC',
    'Port Harcourt Electricity - PHED',
    'Kano Electricity - KEDCO',
    'Jos Electricity - JEDC',
    'Ikeja Electricity - IKEDC',
    'Ibadan Electricity - IBEDC',
    'Enugu Electricity - EEDC',
    'Eko Electricity - EKEDC',
    'Yola Electricity - YEDC',
  ];

  final List<String> packageOptions = ['Prepaid', 'Postpaid'];

  final List<Map<String, String>> recentPurchases = [
    {'network': 'Ikeja Electricity', 'time': '9:25 AM', 'meter': '8063557945'},
    {'network': 'Kano Electricity', 'time': 'Yesterday', 'meter': '8063557945'},
    {'network': 'Enugu Electricity', 'time': '08/07/23', 'meter': '8063557945'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Electricity bill 🇳🇬'),
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
            // Wallet Balance
            Center(
              child: Text(
                'Wallet Balance: ₦1,565,520.57',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            // Custom "Dropdown" for Network (Service Provider)
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Service Provider',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: ListView.builder(
                              itemCount: serviceProviders.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(serviceProviders[index]),
                                  onTap: () {
                                    setState(() {
                                      selectedNetwork = serviceProviders[index];
                                    });
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D8),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedNetwork ?? 'Choose Network',
                      style: TextStyle(
                        color: selectedNetwork == null
                            ? Colors.grey
                            : Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Custom "Dropdown" for Package (Prepaid/Postpaid)
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Select Package',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            child: ListView.builder(
                              itemCount: packageOptions.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(packageOptions[index]),
                                  onTap: () {
                                    setState(() {
                                      selectedPackage = packageOptions[index];
                                    });
                                    Navigator.pop(context);
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D8),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedPackage ?? 'Select Package',
                      style: TextStyle(
                        color: selectedPackage == null
                            ? Colors.grey
                            : Colors.black,
                      ),
                    ),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Meter Number Input
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Meter Number',
                hintText: '00000000',
                filled: true,
                fillColor: Color(0xFFD3D3D8), // Same background color as dropdown
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  meterNumber = value;
                });
              },
            ),
            SizedBox(height: 20),

            // Amount Input
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Amount',
                hintText: '₦0.00',
                filled: true,
                fillColor: Color(0xFFD3D3D8), // Same background color as dropdown
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  amount = value;
                });
              },
            ),
            SizedBox(height: 30),

            // Recent Purchases
            Text(
              'Recent Purchases',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: recentPurchases.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.electrical_services),
                    title: Text(recentPurchases[index]['network']!),
                    subtitle: Text(recentPurchases[index]['meter']!),
                    trailing: Text(recentPurchases[index]['time']!),
                  );
                },
              ),
            ),

            // Pay Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _showConfirmationSheet
                ,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Pay',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
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
