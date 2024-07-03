import 'package:cleanly_cleaner/cubits/auth/auth_cubit.dart';
import 'package:cleanly_cleaner/pages/splash_screen.dart';
import 'package:cleanly_cleaner/repositories/auth_repo.dart';
import 'package:cleanly_cleaner/utils/app_sharedprefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppSharedPrefs.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(AuthRepo.getInstance()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
