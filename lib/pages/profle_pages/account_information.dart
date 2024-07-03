// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:avatar_view/avatar_view.dart';
import 'package:cleanly_cleaner/colors.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: const Text('Please choose media to select'),
            content: SizedBox(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //Image Picker function to get image from camera

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Account Information',
          style: TextStyle(color: white),
        ),
        backgroundColor: cleanlyColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //   const Padding(
            //   padding: EdgeInsets.all(10.0),
            //   child: Center(
            //     child: AvatarView(

            //             radius: 45,
            //             borderColor: Colors.white,
            //             avatarType: AvatarType.CIRCLE,
            //             backgroundColor: Colors.red,
            //             imagePath:
            //             "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?cs=srgb&dl=pexels-pixabay-415829.jpg",
            //             placeHolder: Icon(Icons.person, size: 50,),
            //             errorWidget: Icon(Icons.error, size: 50,),
            //           ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //if image not null show the image
                    //if image null show text
                    image != null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: CircleAvatar(
                                radius: 45,
                                child: Image.file(
                                  //to show image, you type like this.
                                  File(image!.path),
                                  fit: BoxFit.cover,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                            ),
                          )
                        : const Padding(
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
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(cleanlyColor),
                      ),
                      onPressed: () {
                        myAlert();
                      },
                      child: const Text(
                        'Upload Photo',
                        style: TextStyle(color: white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Center(
                // ignore: unnecessary_null_comparison

                ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                          hintText: 'Last Name',
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: TextFormField(
                        initialValue: "Mighty Warner LLC ",
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: grey)),
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Company Name',
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        )),
                  ),
                ],
              ),
            ),

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
