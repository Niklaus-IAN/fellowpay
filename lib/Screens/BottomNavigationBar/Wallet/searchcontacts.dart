import 'package:fellowpay/Screens/BottomNavigationBar/Wallet/payforairtime.dart';
import 'package:flutter/material.dart';

import '../../../Styles/colours.dart';

class SearchContacts extends StatefulWidget {
  @override
  _SearchContactsState createState() => _SearchContactsState();
}

class _SearchContactsState extends State<SearchContacts> {
  final List<Map<String, String>> contacts = [
    {"name": "Ada", "phone": "07038473798"},
    {"name": "Amaka", "phone": "08092135478"},
    {"name": "Amanda", "phone": "08092135478"},
    {"name": "Emeka", "phone": "08057858865"},
    {"name": "Rofown Classic", "phone": "08057858865"},
    {"name": "Mezcanda", "phone": "08057858865"},
    {"name": "Uzendu", "phone": "08057858865"},
    {"name": "Ugo", "phone": "08057858865"},
    {"name": "Zoba", "phone": "08057858865"},
  ];

  String searchQuery = '';

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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search contact',
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: Color(0xFFEEEEF0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value.toLowerCase();
                  });
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  String contactName = contacts[index]['name']!;
                  String contactPhone = contacts[index]['phone']!;

                  if (searchQuery.isNotEmpty &&
                      !contactName.toLowerCase().contains(searchQuery)) {
                    return Container(); // Hide contacts that don't match search
                  }

                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PayForAirtime()));
                    },
                    child: Card(
                      surfaceTintColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        leading: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.blue),
                            color: Color(0xFFC9D0FF),
                          ),
                          child: Text(
                            contactName[0],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        title: Text(contactName),
                        subtitle: Text(contactPhone),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
