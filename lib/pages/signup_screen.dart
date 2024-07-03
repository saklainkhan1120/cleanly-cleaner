import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/bottomappbar.dart';
import 'package:cleanly_cleaner/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 140.0, bottom: 10),
              child: Center(
                child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Image.asset('images/cleanly_logo.jpg')),
              ),
            ),
            const Text(
              'Welcome to Cleanly',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 22, color: grey),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.person),
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: black),
                    hintText: 'Enter your email id'),
                cursorColor: black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 10, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                    ),
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: black),
                    hintText: 'Enter your password'),
                cursorColor: black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeAppBar()));
              },
              child: Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: cleanlyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      indent: 20.0,
                      endIndent: 10.0,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  Expanded(
                    child: Divider(
                      indent: 10.0,
                      endIndent: 20.0,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(const ExampleUiLoadingAnimation());
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 0, bottom: 0),
                child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: white,
                        //border: Border.all(color: Color.fromARGB(255, 5, 146, 77)),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Image(image: AssetImage("images/g.png")),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Sign in With Google",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: black),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: 'Don\'t have an Account? ',
                      style: TextStyle(color: grey, fontSize: 12)),
                  TextSpan(
                    text: 'Sign up',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: cleanlyColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
