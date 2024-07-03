import 'package:cleanly_cleaner/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  String dropdownValue = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Address',
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
                        initialValue: "Xyz, LT Street ",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Street 1 ',
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
                        initialValue: "lorem ispum, abc road",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Street 1 ',
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
                        initialValue: "Pleasonton",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'City/District',
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
                        initialValue: "California",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'State/Province',
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
                        initialValue: "112233",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Zip Code',
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
                        initialValue: "USA",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Country',
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
                          backgroundColor: cleanlyColor,
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
                          backgroundColor: cleanlyColor,
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
