import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/chat.dart';
import 'package:cleanly_cleaner/pages/chat_ui.dart';
import 'package:cleanly_cleaner/pages/homepage.dart';

import 'package:cleanly_cleaner/pages/ordershistory.dart';
import 'package:cleanly_cleaner/pages/profile.dart';
import 'package:cleanly_cleaner/pages/profile1.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  int pageIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const ChatPage(),
    const OrderHistory(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // HomeAppBar: HomeAppBar(
      //   title: const Text("Mighty Fyn"),
      //   centerTitle: true,
      //   backgroundColor: buttoncolor,
      // ), //HomeAppBar
      backgroundColor: primary,
      body: getBody(),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: const EdgeInsets.all(0),
      //     children: [
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: buttoncolor,
      //         ), //BoxDecoration
      //         child: UserAccountsDrawerHeader(
      //           decoration: BoxDecoration(color: buttoncolor),

      //           accountName: Text(
      //             "Abhishek Mohan",
      //             style: TextStyle(fontSize: 18),
      //           ),
      //           accountEmail: Text("abhishekm977@gmail.com"),
      //           currentAccountPictureSize: Size.square(50),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundColor: Colors.white,
      //             child: Text(
      //               "A",
      //               style: TextStyle(fontSize: 30.0, color: buttoncolor),
      //             ), //Text
      //           ), //circleAvatar
      //         ), //UserAccountDrawerHeader
      //       ), //DrawerHeader
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text(' My Profile '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.book),
      //         title: const Text(' My Bill '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.workspace_premium),
      //         title: const Text(' Go Premium '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.video_label),
      //         title: const Text(' Saved Videos '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.edit),
      //         title: const Text(' Edit Profile '),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.logout),
      //         title: const Text('LogOut'),
      //         onTap: () {
      //           Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(
      //               builder: (context) => const LoginScreen(),
      //             ),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ), //Drawer
      bottomNavigationBar: getFooter(),
      floatingActionButton: SafeArea(
        child: SizedBox(
          child: FloatingActionButton(
            backgroundColor: cleanlyColor,
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 20,
              color: white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      CupertinoIcons.home,
      CupertinoIcons.chat_bubble_text,
      CupertinoIcons.chart_bar_square,
      CupertinoIcons.person,
    ];
    return AnimatedBottomNavigationBar(
      onTap: (index) {
        setTabs(index);
      },
      backgroundColor: primary,
      icons: iconItems,
      splashColor: secondary,
      inactiveColor: black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      activeIndex: pageIndex,
      leftCornerRadius: 10,
      iconSize: 25,
      rightCornerRadius: 10,
      elevation: 2,
    );
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
