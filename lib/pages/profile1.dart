import 'package:avatar_view/avatar_view.dart';
import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/profle_pages/account_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/address.dart';
import 'package:cleanly_cleaner/pages/profle_pages/contact_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/settings.dart';
import 'package:cleanly_cleaner/pages/profle_pages/tax_information.dart';

import 'package:flutter/material.dart';

class ProfileN extends StatefulWidget {
  const ProfileN({super.key});

  @override
  State<ProfileN> createState() => _ProfileNState();
}

class _ProfileNState extends State<ProfileN> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile N',
          style: TextStyle(color: white),
        ),
        backgroundColor: buttoncolor,
        // actions: const [
        //   Column(
        //     mainAxisAlignment: MainAxisAlignment.center,

        //     children: [

        //       Padding(
        //         padding: EdgeInsets.fromLTRB(0,0,4,0),
        //         child: Icon(Icons.logout),
        //       ),
        //     ],
        //   )
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: AvatarView(
                radius: 45,
                borderColor: Colors.white,
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath:
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg",
                placeHolder: Icon(
                  Icons.person,
                  size: 50,
                ),
                errorWidget: Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          ),

          Column(
            children: [
              Text("Admin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              const Text(
                "admin@gmail.com",
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: ExpansionTile(
                          maintainState: true,
                          leading: const Icon(
                            Icons.person,
                            color: black,
                          ),
                          title: const Text('Account Information'),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Saklain",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Last Name',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Khan",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Last Name',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "saklainkhan@gmail.com",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Email Address',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Mighty Warner LLC ",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Company Name',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: ExpansionTile(
                          leading: const Icon(
                            Icons.location_on,
                            color: black,
                          ),
                          title: const Text('Address'),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Xyz, LT Street ",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Street 1 ',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "lorem ispum, abc road",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Street 1 ',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Pleasonton",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'City/District',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "California",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'State/Province',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "112233",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Zip Code',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "USA",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Country',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: ExpansionTile(
                          leading: const Icon(
                            Icons.person,
                            color: black,
                          ),
                          title: const Text('Tax Information'),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "ABDHBDU123a",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'VAT ID :',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "Texttile Industry",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Industry',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "q123SC",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Taxes Code:',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "SBWtGSt234ux",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'GST Number',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "www.xyz.com",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Website',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "http/xyz/abc",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Business API',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: ExpansionTile(
                          leading: const Icon(
                            Icons.person,
                            color: black,
                          ),
                          title: const Text('Contact Information'),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "32456781",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Phone Number',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "432156789",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Fax Number',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "1267907",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Mobile Number',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Flexible(
                                    child: TextFormField(
                                        initialValue: "mightyfyn.com",
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: grey)),
                                          contentPadding: EdgeInsets.all(10),
                                          hintText: 'Web Address',
                                          focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PersonalPage()));
                      },
                      child: const Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Account Information'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddressPage()));
                      },
                      child: const Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('Address'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BusinessDetails()));
                      },
                      child: const Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.storefront),
                          title: Text('Tax Information'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BankDetails()));
                      },
                      child: const Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.account_balance),
                          title: Text('Contact Information'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Settings()));
                      },
                      child: const Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('Settings'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Text("V.1.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          //   CircleAvatar(radius: (52),
          //     backgroundColor: Colors.white,
          //     child: ClipRRect(
          //       borderRadius:BorderRadius.circular(50),
          //       child: Image.asset("images/pro.png"),
          //     )
          // )
        ]),
      ),
    );
  }
}
