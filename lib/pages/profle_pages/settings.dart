import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/profle_pages/account_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/address.dart';
import 'package:cleanly_cleaner/pages/profle_pages/contact_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/tax_information.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(color: white),
        ),
        backgroundColor: buttoncolor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Personal Details :',
                              style: TextStyle(
                                  color: buttoncolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PersonalPage()));
                              },
                              child: const Icon(Icons.edit)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Divider(
                        color: black,
                        height: 10.2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Name :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Admin',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Email :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('admin@gmail.com',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Number :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('9812334567',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Dummy :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Blank Field',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Address :',
                              style: TextStyle(
                                  color: buttoncolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddressPage()));
                              },
                              child: const Icon(Icons.edit)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Divider(
                        color: black,
                        height: 10,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Address Line 1 :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Xyz, lorem ispum',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Address Line 2 :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('lorem ispum, abc xyz',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('City/District :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Pleasonton',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('State/Province :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('California',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Postal Code :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('112233',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Country :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('USA',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Bussines Details :',
                              style: TextStyle(
                                  color: buttoncolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BusinessDetails()));
                              },
                              child: const Icon(Icons.edit)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Divider(
                        color: black,
                        height: 10,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Business Name :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Clothing Store',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Industry :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('texttile Industry',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Bussiness type :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('LLC',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('GST Number :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Cbn123Xyzebhy',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Website :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('www.xyz.com',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Bussiness Api :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('https/xyz/abc/',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Bank Details :',
                              style: TextStyle(
                                  color: buttoncolor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BankDetails()));
                              },
                              child: const Icon(Icons.edit)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                      child: Divider(
                        color: black,
                        height: 10,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Account Number :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('12345667788',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Ifsc code :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('cbin124rrff',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Bank Name :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Abc Bank',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Dummy :',
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Blank Field',
                              style: TextStyle(
                                  color: grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
