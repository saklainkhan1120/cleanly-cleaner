import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/cubits/auth/auth_cubit.dart';
import 'package:cleanly_cleaner/cubits/auth/auth_state.dart';
import 'package:cleanly_cleaner/pages/chat.dart';
import 'package:cleanly_cleaner/pages/chat_ui.dart';
import 'package:cleanly_cleaner/pages/service_details.dart';

import 'package:cleanly_cleaner/pages/splash_screen.dart';
import 'package:cleanly_cleaner/utils/app_sharedprefs.dart';
import 'package:cleanly_cleaner/utils/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IconThemeData? actionsIconTheme;

  late AuthCubit authCubit;
  @override
  void initState() {
    authCubit = BlocProvider.of<AuthCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cleanly',
          style: TextStyle(color: white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: cleanlyColor,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle search button press
            },
          ),
          BlocConsumer<AuthCubit, AuthState>(builder: (context, state) {
            if (state is GetLogoutLoadingState) {
              return const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              ));
            }
            return PopupMenuButton<String>(
              onSelected: (val) {
                authCubit.getLogout();
              },
              itemBuilder: (BuildContext context) {
                return {'Logout'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            );
          }, listener: (context, state) {
            if (state is GetLogoutErrorState) {
              UIHelper.showShortToast(state.msg);
            } else if (state is GetLogoutLogoutState) {
              AppSharedPrefs.removeAllPrefs();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                ),
              );
            }
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tickets',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.filter_list,
                    color: black,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ServiceDetails()));
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  color: white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: arrowbgColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Center(
                                child: Image.asset('images/dc.png'),
                              ),
                            ),
                            // SizedBox(
                            //   width: 50,
                            //   height: 50,
                            //   child: Center(
                            //     child: Icon(
                            //       Icons.payment,
                            //       color: mainFontColor,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: SizedBox(
                            width: (size.width - 90) * 0.7,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Normal Cleaning Services",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  "Abul Salam Wahidi",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: black.withOpacity(0.5),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Sharja",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: black.withOpacity(0.5),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(height: 5),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "AED 30",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: black,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "23 Min ago",
                              style: TextStyle(
                                fontSize: 10,
                                color: black.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 22,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: arrowbgColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset('images/dc.png'),
                            ),
                          ),
                          // SizedBox(
                          //   width: 50,
                          //   height: 50,
                          //   child: Center(
                          //     child: Icon(
                          //       Icons.payment,
                          //       color: mainFontColor,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: (size.width - 90) * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Deep Cleaning Services",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Abu Wafa",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Sharja",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AED 30",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23 Min ago",
                            style: TextStyle(
                              fontSize: 10,
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: arrowbgColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset('images/dc.png'),
                            ),
                          ),
                          // SizedBox(
                          //   width: 50,
                          //   height: 50,
                          //   child: Center(
                          //     child: Icon(
                          //       Icons.payment,
                          //       color: mainFontColor,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: (size.width - 90) * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Kitchen Deep Cleaning",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Abu Wafa",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Sharja",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AED 30",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23 Min ago",
                            style: TextStyle(
                              fontSize: 10,
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: arrowbgColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset('images/dc.png'),
                            ),
                          ),
                          // SizedBox(
                          //   width: 50,
                          //   height: 50,
                          //   child: Center(
                          //     child: Icon(
                          //       Icons.payment,
                          //       color: mainFontColor,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: (size.width - 90) * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Bathroom Deep Cleaing",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Abu Wafa",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Sharja",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AED 30",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23 Min ago",
                            style: TextStyle(
                              fontSize: 10,
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                color: white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: arrowbgColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Image.asset('images/dc.png'),
                            ),
                          ),
                          // SizedBox(
                          //   width: 50,
                          //   height: 50,
                          //   child: Center(
                          //     child: Icon(
                          //       Icons.payment,
                          //       color: mainFontColor,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: SizedBox(
                          width: (size.width - 90) * 0.7,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Normal Cleaning Services",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Abu Wafa",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Sharja",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: black.withOpacity(0.5),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "AED 30",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23 Min ago",
                            style: TextStyle(
                              fontSize: 10,
                              color: black.withOpacity(0.5),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        shadowColor: white,
        surfaceTintColor: white,
        backgroundColor: white,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: cleanlyColor,
              ),
              accountName: Text("Dummy User"),
              accountEmail: Text("dummyuser@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "D",
                  style: TextStyle(fontSize: 40.0, color: grey),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contacts),
              title: const Text("Contact Us"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
