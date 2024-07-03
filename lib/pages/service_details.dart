import 'package:cleanly_cleaner/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slider_button/slider_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ServiceDetails extends StatefulWidget {
  const ServiceDetails({super.key});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Service Details',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: cleanlyColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Order Id',
                              style: TextStyle(
                                  color: black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '  #cl001',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: [
                    Text(
                      'Normal Cleaning Service',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: cleanlyColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Row(
                  children: [
                    Container(
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Equipments',
                                style: TextStyle(
                                    color: black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                              text: '(Required!)',
                              style: TextStyle(color: grey, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'User Details',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: black),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                          initialValue: "Saklain",
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'First Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
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
                                borderSide: BorderSide(color: grey)),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Last Name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                          initialValue: "saklainkhan@gmail.com",
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Email Address',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                          initialValue: "+9715623591234",
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            contentPadding: const EdgeInsets.all(10),
                            hintText: 'Mobile Number',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                launchWhatsApp();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  'images/wp.png',
                                  height: 2,
                                ),
                              ),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: TextFormField(
                          initialValue: "VILLA 6 ZAGLABA ST 99, DUBAI, DUBAI ",
                          maxLines: 3,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: grey)),
                            contentPadding: EdgeInsets.all(10),
                            hintText: 'Address',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeAppBar()));
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: cleanlyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Location",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.near_me,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const HomeAppBar()));
                },
                child: Container(
                  padding: const EdgeInsets.all(13),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: cleanlyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                      child: Text(
                    "Complete",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> launchWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=1234567890&text=Hello, World!";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}
