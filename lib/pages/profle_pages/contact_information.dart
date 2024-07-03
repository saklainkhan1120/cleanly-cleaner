import 'package:cleanly_cleaner/colors.dart';
import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({super.key});

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Contact Information',
          style: TextStyle(color: white),
        ),
        backgroundColor: cleanlyColor,
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
                        initialValue: "32456781",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Phone Number',
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
                        initialValue: "432156789",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Fax Number',
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
                        initialValue: "1267907",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Mobile Number',
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
                        initialValue: "mightyfyn.com",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Web Address',
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
