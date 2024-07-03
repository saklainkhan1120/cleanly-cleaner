// import 'dart:js';

// import 'package:cleanly_cleaner/colors.dart';
// import 'package:cleanly_cleaner/pages/homepage.dart';
// import 'package:flutter/material.dart';

// class Chat extends StatefulWidget {
//   const Chat({super.key});

//   @override
//   State<Chat> createState() => _ChatState();
// }

// class _ChatState extends State<Chat> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Chat',
//           style: TextStyle(color: white),
//         ),
//         backgroundColor: cleanlyColor,
//         leading: _buildBackButton(),
//       ),
//       body: const Column(
//         children: [],
//       ),
//     );
//   }
// }

// Widget _buildBackButton() {
//   return GestureDetector(
//     onTap: () {
//       // Navigator.of(context as BuildContext).pop();
//       Navigator.push(context as BuildContext,
//           MaterialPageRoute(builder: (context) => const HomePage()));
//     },
//     child: const Icon(
//       Icons.arrow_back,
//       color: Colors.white,
//     ),
//   );
// }
