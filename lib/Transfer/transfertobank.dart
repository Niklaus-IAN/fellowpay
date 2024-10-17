import 'package:flutter/material.dart';

class TransferToBank extends StatefulWidget {
  @override
  _TransferToBankState createState() => _TransferToBankState();
}

class _TransferToBankState extends State<TransferToBank> {
  String selectedBank = 'Select Bank';
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
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

                   // _showConfirmationSheet(context);
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button action
          },
        ),
        title: Text(
          'Transfer to Bank 🇳🇬',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Wallet Balance
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Wallet Balance: ₦1,565,520.57',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Select Bank
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D8),  // Dynamic background color
                  borderRadius: BorderRadius.circular(20),
                  // Optional border
                ),

                child: DropdownButtonFormField<String>(

                  value: selectedBank,
                  items: ['Select Bank', 'Bank A', 'Bank B', 'Bank C']
                      .map((bank) => DropdownMenuItem(value: bank, child: Text(bank)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedBank = value!;
                    });
                  },
                  decoration: InputDecoration(

                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color:  Colors.grey)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Account Number',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              // Account Number Input
              TextField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFD3D3D8),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none
                  ),
                  hintText: '0123456789',
                ),
              ),
              SizedBox(height: 20),
              Text('Amount',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              // Amount Input
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFD3D3D8),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  hintText: '0.00',
                ),
              ),
              SizedBox(height: 20),
   Text('Description',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              // Description Input
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFD3D3D8),

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  ),
                  hintText: 'E.g Paid for stuffs'
                ),
              ),
              SizedBox(height: 30),

              // Most Recent Transactions
              Text(
                'Most Recent',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Recent Transactions List
              Column(
                children: [
                  _buildRecentTransaction('Jude Bienichi', 'GTBank', '2145236950'),
                  _buildRecentTransaction('Okoye Nzube', 'GTBank', '2589540210'),
                  _buildRecentTransaction('Prince Nuel', 'Access Bank', '0034765512'),
                  _buildRecentTransaction('Favour Nwachukwu', 'Union Bank', '0022334455'),
                ],
              ),
              SizedBox(height: 30),

              // Next Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:
                    _showConfirmationSheet
                    // Handle next button functionality
                  ,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15), backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper widget to build recent transaction list
  Widget _buildRecentTransaction(String name, String bank, String accountNumber) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.orangeAccent,
        child: Icon(Icons.account_circle, color: Colors.white),
      ),
      title: Text(name),
      subtitle: Text('$bank - $accountNumber'),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TransferToBank(),
  ));
}
