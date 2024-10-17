import 'package:flutter/material.dart';



class SendMoneyScreen extends StatefulWidget {

  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  String selectedBank = 'Select Bank';
  TextEditingController amountController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController receiverNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        elevation: 0,
        centerTitle: true,
        title: Text(
          'Send Money',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left, color: Colors.black),
          onPressed: () {
            // Handle back action
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              // Amount Input
              Text(
                'Enter Your Amount',
                style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(
                      'NGN',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color:Color(0xFFE7EAEE)
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: amountController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '00.00',
                          hintStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Receiver's Bank
              Text('Receiver\'s Bank', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14)),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF4F4F4),  // Dynamic background color
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
              // Account Number
              Text('Account Number', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14)),
              SizedBox(height: 10),
              TextField(
                controller: accountNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Account Number Here',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(height: 20),
              // Receiver's Name
              Text('Receiver\'s Name', style: TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 14)),
              SizedBox(height: 10),
              TextField(
                controller: receiverNameController,
                decoration: InputDecoration(
                  hintText: 'Name Here',

                ),
              ),
              SizedBox(height: 30),
              // Previous Beneficiaries
              Text('Previous Beneficiaries', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 20),
              Row(
                children: [
                  _beneficiaryItem(icon: Icons.add, label: 'Add',),
                  SizedBox(width: 10),
                  _beneficiaryItem(imagePath: 'assets/yamilet.jpg', label: 'Yamilet'),
                  SizedBox(width: 10),
                  _beneficiaryItem(imagePath: 'assets/alexa.jpg', label: 'Alexa'),
                  SizedBox(width: 10),
                  _beneficiaryItem(imagePath: 'assets/yakub.jpg', label: 'Yakub'),
                  SizedBox(width: 10),
                  _beneficiaryItem(imagePath: 'assets/krishna.jpg', label: 'Krishna'),

                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          backgroundColor:  Color(0xFF1DA1FA)
                      ),
                      onPressed: (){}, child: Text('Send  Money',style: TextStyle(color: Colors.white),)))
            ],
          ),
        ),
      ),
    );
  }

  Widget _beneficiaryItem({IconData? icon, String? imagePath, required String label}) {
    return Column(
      children: [
        Container(
          width: 60.0,  // Adjust according to CircleAvatar radius
          height: 60.0, // Adjust according to CircleAvatar radius
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Color(0xFF00577A),  // Border color
              width: 2.0,                // Border width
            ),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            backgroundImage: imagePath != null ? AssetImage(imagePath) : null,
            child: icon != null
                ? Icon(
              icon,
              size: 30,
              color: Color(0xFF00577A),
            )
                : null,
          ),
        ),

        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
