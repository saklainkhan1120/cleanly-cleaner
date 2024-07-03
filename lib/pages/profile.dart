import 'package:avatar_view/avatar_view.dart';
import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/profle_pages/account_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/address.dart';
import 'package:cleanly_cleaner/pages/profle_pages/contact_information.dart';
import 'package:cleanly_cleaner/pages/profle_pages/settings.dart';
import 'package:cleanly_cleaner/pages/profle_pages/tax_information.dart';

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,

        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: white),
        ),
        backgroundColor: cleanlyColor,
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: AvatarView(
                radius: 45,
                borderColor: Colors.white,
                avatarType: AvatarType.CIRCLE,
                backgroundColor: Colors.red,
                imagePath:
                    "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg",
                placeHolder: Container(
                  child: const Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                errorWidget: const Icon(
                  Icons.error,
                  size: 50,
                ),
              ),
            ),
          ),

          Column(
            children: [
              Text("Cleaner",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              const Text(
                "cleaner@gmail.com",
                textAlign: TextAlign.center,
              ),
            ],
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
                                builder: (context) => PersonalPage()));
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
                    // GestureDetector(
                    //   onTap: () {
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => const BusinessDetails()));
                    //   },
                    //   child: const Card(
                    //     elevation: 5,
                    //     child: ListTile(
                    //       leading: Icon(Icons.storefront),
                    //       title: Text('Tax Information'),
                    //     ),
                    //   ),
                    // ),
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
