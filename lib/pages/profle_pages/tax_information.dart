import 'package:cleanly_cleaner/colors.dart';
import 'package:flutter/material.dart';

class BusinessDetails extends StatefulWidget {
  const BusinessDetails({super.key});

  @override
  State<BusinessDetails> createState() => _BusinessDetailsState();
}

class _BusinessDetailsState extends State<BusinessDetails> {
  String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tax Information',
          style: TextStyle(color: white),
        ),
        backgroundColor: buttoncolor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                        initialValue: "ABDHBDU123a",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'VAT ID :',
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
                        initialValue: "Texttile Industry",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Industry',
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
                        initialValue: "q123SC",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Taxes Code:',
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
                        initialValue: "SBWtGSt234ux",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'GST Number',
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
                        initialValue: "www.xyz.com",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Website',
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
                        initialValue: "http/xyz/abc",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Business API',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            //  Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: DropdownButtonFormField(

            //   decoration: const InputDecoration(
            //     enabledBorder: OutlineInputBorder( //<-- SEE HERE
            //   borderSide: BorderSide(color: Colors.black, width:1),
            //     ),
            //     focusedBorder: OutlineInputBorder( //<-- SEE HERE
            //   borderSide: BorderSide(color: Colors.black, width: 1),
            //     ),
            //     filled: true,
            //     // fillColor: Colors.greenAccent,
            //   ),
            //   // dropdownColor: Colors.greenAccent,
            //   value: dropdownValue,
            //   onChanged: (String? newValue) {
            //     setState(() {
            //   dropdownValue = newValue!;
            //     });
            //   },
            //   items: <String>['Dog', 'Cat', 'Tiger', 'Lion'].map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //   value: value,
            //   child: Text(
            //     value,
            //     style: const TextStyle(fontSize: 17),
            //   ),
            //     );
            //   }).toList(),
            // ),
            // ),
            //  Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: DropdownButtonFormField(

            //   decoration: const InputDecoration(
            //     enabledBorder: OutlineInputBorder( //<-- SEE HERE
            //   borderSide: BorderSide(color: Colors.black, width: 1),
            //     ),
            //     focusedBorder: OutlineInputBorder( //<-- SEE HERE
            //   borderSide: BorderSide(color: Colors.black, width: 1),
            //     ),
            //     filled: true,
            //     // fillColor: Colors.greenAccent,
            //   ),
            //   // dropdownColor: Colors.greenAccent,
            //   value: dropdownValue,
            //   onChanged: (String? newValue) {
            //     setState(() {
            //   dropdownValue = newValue!;
            //     });
            //   },
            //   items: <String>['Dog', 'Cat', 'Tiger', 'Lion'].map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //   value: value,
            //   child: Text(
            //     value,
            //     style: const TextStyle(fontSize: 17),
            //   ),
            //     );
            //   }).toList(),
            // ),
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 20, 70, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttoncolor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Edit',
                        style: TextStyle(color: white),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttoncolor,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          textStyle: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
