import 'dart:async';

import 'package:cleanly_cleaner/pages/bottomappbar.dart';
import 'package:cleanly_cleaner/pages/homepage.dart';
import 'package:cleanly_cleaner/pages/login_screen.dart';
import 'package:cleanly_cleaner/pages/signup_screen.dart';
import 'package:cleanly_cleaner/utils/app_sharedprefs.dart';
import 'package:cleanly_cleaner/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startScreen();
    Timer(const Duration(seconds: 3), () {
      if (AppSharedPrefs.isAuthenticated()) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeAppBar()));
      } else {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage()));
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth * 0.7,
          margin: const EdgeInsets.only(bottom: 40),
          padding: EdgeInsets.zero,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/cleanly_logo.jpg"))),
        ),
      ),
    );
  }
}

void startScreen() async {
/*    if (AppSharedPrefs.isAuthenticated()) {
      Log.e(this, AppSharedPrefs.getAuthToken());
      UIHelper.gotoScreen(context, HomeScreen(), removePreviousStack: true );
    } else {
      UIHelper.gotoScreen(context, LoginScreen(), removePreviousStack:  true );
    }*/
}
