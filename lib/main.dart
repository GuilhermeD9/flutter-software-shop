import 'package:flutter/material.dart';
import 'package:softwareBuy/screens/about_app_screen.dart';
import 'package:softwareBuy/screens/about_crew_screen.dart';
import 'package:softwareBuy/screens/edit_profile_screen.dart';
import 'package:softwareBuy/screens/forgot_password_screen.dart';
import 'package:softwareBuy/screens/login_screen.dart';
import 'package:softwareBuy/screens/main_screen.dart';
import 'package:softwareBuy/screens/register_software_screen.dart';
import 'package:softwareBuy/screens/register_user_screen.dart';
import 'package:softwareBuy/screens/software_details_screen.dart';
import 'package:softwareBuy/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoftwareBuy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        useMaterial3: true,

        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          onPrimary: Colors.white,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: Colors.white,

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6200EE),
          foregroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6200EE),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            textStyle: const TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),
          ),
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: Color(0xFF6200EE),
          unselectedItemColor: Color(0xFF757575),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot-password': (context) => const ForgotPasswordScreen(),
        '/home': (context) => const MainScreen(),
        
        '/software-details': (context) => const SoftwareDetailsScreen(),
        '/register' : (context) => const RegisterUserScreen(),
        '/register-software': (context) => const RegisterSoftwareScreen(),
        '/edit-profile' : (context) => const EditProfileScreen(),
        '/about-crew' : (context) => const AboutCrewScreen(),
        '/about-app': (context) => const AboutAppScreen(),
      },
    );
  }
}
