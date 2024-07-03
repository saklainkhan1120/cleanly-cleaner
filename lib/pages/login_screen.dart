// import 'package:cleanly_cleaner/colors.dart';
// import 'package:cleanly_cleaner/cubits/auth/auth_cubit.dart';
// import 'package:cleanly_cleaner/cubits/auth/auth_state.dart';
// import 'package:cleanly_cleaner/pages/home_screen.dart';
// import 'package:cleanly_cleaner/pages/signup_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   late AuthCubit authCubit;
//   String email = '', password = '';
//   @override
//   void initState() {
//     authCubit = BlocProvider.of<AuthCubit>(context);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: white,
//       body: getBody(),
//     );
//   }

//   Widget getBody() {
//     return SafeArea(
//         child: SingleChildScrollView(
//       child: Column(
//         children: [
//           const SizedBox(height: 80),
//           Image.asset(
//             'images/cleanly_logo.jpg',
//             height: 75,
//           ),
//           // Container(
//           //   //  width: screenWidth * 0.7,
//           //   decoration: const BoxDecoration(
//           //     image: DecorationImage(
//           //       image: AssetImage("images/cleanly_logo.jpg"),
//           //     ),
//           //   ),
//           // ),
//           const Text(
//             "Welcome to Login ",
//             style: TextStyle(
//               fontWeight: FontWeight.w800,
//               fontSize: 17,
//               color: Color(0xFF67727d),
//             ),
//           ),
//           const SizedBox(height: 80),
//           Container(
//             width: double.infinity,
//             margin: const EdgeInsets.symmetric(horizontal: 25),
//             decoration: BoxDecoration(
//               color: white,
//               borderRadius: BorderRadius.circular(25),
//               boxShadow: [
//                 BoxShadow(
//                   color: grey.withOpacity(0.03),
//                   spreadRadius: 10,
//                   blurRadius: 3,
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   left: 20, top: 15, bottom: 5, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Email Address",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 13,
//                       color: Color(0xFF67727d),
//                     ),
//                   ),
//                   TextField(
//                     // controller: _email,
//                     onChanged: (val) {
//                       setState(() {
//                         email = val;
//                       });
//                     },
//                     cursorColor: black,
//                     style: const TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.w500,
//                       color: black,
//                     ),
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                       prefixIcon: Icon(
//                         Icons.email_outlined,
//                       ),
//                       prefixIconColor: black,
//                       hintText: "Email",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),
//           Container(
//             width: double.infinity,
//             margin: const EdgeInsets.symmetric(horizontal: 25),
//             decoration: BoxDecoration(
//               color: white,
//               borderRadius: BorderRadius.circular(25),
//               boxShadow: [
//                 BoxShadow(
//                   color: grey.withOpacity(0.03),
//                   spreadRadius: 10,
//                   blurRadius: 3,
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   left: 20, top: 15, bottom: 5, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Password",
//                     style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 13,
//                       color: Color(0xFF67727d),
//                     ),
//                   ),
//                   TextField(
//                     obscureText: true,
//                     //controller: _password,
//                     onChanged: (val) {
//                       password = val;
//                       setState(() {});
//                     },
//                     cursorColor: black,
//                     style: const TextStyle(
//                       fontSize: 17,
//                       fontWeight: FontWeight.w500,
//                       color: black,
//                     ),
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                       prefixIcon: Icon(
//                         Icons.lock_outlined,
//                       ),
//                       prefixIconColor: black,
//                       suffixIcon: Icon(Icons.remove_red_eye_outlined),
//                       suffixIconColor: Colors.black,
//                       hintText: "Password",
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const SizedBox(height: 60),
//           BlocConsumer<AuthCubit, AuthState>(builder: (context, state) {
//             if (state is AuthLoadingState) {
//               return const CircularProgressIndicator();
//             }
//             return GestureDetector(
//               onTap: () {
//                 authCubit.login(username: email, password: password);
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(16),
//                 margin: const EdgeInsets.symmetric(horizontal: 25),
//                 decoration: BoxDecoration(
//                   color: buttoncolor,
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: const Center(
//                     child: Text(
//                   "Login",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     letterSpacing: 1,
//                   ),
//                 )),
//               ),
//             );
//           }, listener: (context, state) {
//             if (state is AuthErrorState) {
//               print(
//                   "-${state.msg}-------------hey error---------------------------");
//             } else if (state is AuthSuccessState) {
//               Navigator.pushReplacement(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const HomeScreen(),
//                 ),
//               );
//             }
//           }),
//           const SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const LoginDemo(),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Signup",
//                     style: TextStyle(
//                       fontSize: 15,
//                       color: Colors.black,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                 ),
//                 const Text(
//                   "Forgot Password",
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.black,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
