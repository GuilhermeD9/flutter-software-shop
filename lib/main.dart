import 'package:flutter/material.dart';
import 'package:memobile/screens/about_crew_screen.dart';
import 'package:memobile/screens/edit_profile_screen.dart';
import 'package:memobile/screens/login_screen.dart';
import 'package:memobile/screens/forgot_password_screen.dart';
import 'package:memobile/screens/main_screen.dart';
import 'package:memobile/screens/software_details_screen.dart';
import 'package:memobile/screens/register_user_screen.dart';
import 'package:memobile/screens/register_software_screen.dart';
import 'package:memobile/screens/about_app_screen.dart';
import 'package:memobile/screens/splash_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent, primary: Colors.deepPurpleAccent),
        useMaterial3: true,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
          ),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepPurpleAccent,
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurpleAccent.shade700, width: 2.0),
          ),
        )
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
