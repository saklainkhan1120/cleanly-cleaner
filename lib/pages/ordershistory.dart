import 'package:cleanly_cleaner/colors.dart';
import 'package:cleanly_cleaner/pages/service_details.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            "Orders History",
            style: TextStyle(color: white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: cleanlyColor,
          iconTheme: const IconThemeData(color: Colors.white),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                // icon: Icon(Icons.chat_bubble),
                text: "All",
              ),
              Tab(
                // icon: Icon(Icons.video_call),
                text: "Complete",
              ),
              Tab(
                // icon: Icon(Icons.settings),
                text: "Pendings",
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                      left: 25,
                      right: 25,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: mainFontColor,
                          ),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
            // Center(

            //   child: Text("All"),
            // ),
            Column(
              children: [
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
            Column(
              children: [
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
          ],
        ),
      ),
    );
  }
}
