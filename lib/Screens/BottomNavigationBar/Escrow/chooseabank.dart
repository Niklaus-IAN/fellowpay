import 'package:flutter/material.dart';

class ChooseABank extends StatefulWidget {
  @override
  _ChooseABankState createState() => _ChooseABankState();
}

class _ChooseABankState extends State<ChooseABank> {
  TextEditingController searchController = TextEditingController();
  List<String> allBanks = [
    'Access Bank',
    'Access Bank Plc (Diamond)',
    'ALAT',
    'ASO Savings and Loans Plc',
    'Citibank',
    'Ecobank',
    'Fidelity Bank',
    'First Bank',
    'GTBank',
    'Heritage Bank',
    'Keystone Bank',
    'KUDA Microfinance Bank',
    'Polaris Bank',
    'Sterling Bank',
  ];

  List<String> filteredBanks = [];

  @override
  void initState() {
    super.initState();
    filteredBanks = allBanks;
  }

  void filterBanks(String query) {
    List<String> temp = [];
    if (query.isNotEmpty) {
      temp = allBanks
          .where((bank) => bank.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      temp = allBanks;
    }
    setState(() {
      filteredBanks = temp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Bank 🇳🇬',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70.0, // Set the height you want
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Search for a bank input field
            TextField(
              controller: searchController,
              onChanged: (value) {
                filterBanks(value);
              },
              decoration: InputDecoration(
                hintText: 'Search for a bank',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 20),

            // List of banks
            Expanded(
              child: ListView.builder(
                itemCount: filteredBanks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredBanks[index]),
                    subtitle: Divider(height: 2,color: Colors.black,thickness: 1,),
                    onTap: () {
                      // Handle bank selection
                      print('Selected: ${filteredBanks[index]}');
                    },
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