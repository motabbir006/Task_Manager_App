import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/screens/forget_password_verify_email_screen.dart';
import 'package:task_management_with_sourov/ui/screens/forgot_password_pin_verification.dart';
import 'package:task_management_with_sourov/ui/screens/login_screen.dart';
import 'package:task_management_with_sourov/ui/screens/main_bottom_navigation_screen.dart';
import 'package:task_management_with_sourov/ui/screens/registration_screen.dart';
import 'package:task_management_with_sourov/ui/screens/reset_password_screen.dart';
import 'package:task_management_with_sourov/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: _getZeroBorder(),
          enabledBorder:  _getZeroBorder(),
          errorBorder:  _getZeroBorder(),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(double.maxFinite),
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
              )
          ),
        ),
        textTheme: const TextTheme(
          titleLarge:
              TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),


      ),
initialRoute: '/',
      routes: {
        '/': (context) => Splash_Screen(),
        '/login': (context) => loginScreen(),
        '/register': (context) => registrationScreen(),
        '/verify_email': (context) => forgotPasswordVerifyEmail(),
        '/pin_verification': (context) => forgotPasswordPinVerificationScreen(),
        '/reset_password': (context) => resetPasswordScreem(),
        '/main_bottom_nav': (context) => mainBottomNavScreen()






    },
    );
  }
  OutlineInputBorder _getZeroBorder() {
    return  OutlineInputBorder(borderSide: BorderSide.none);
  }
}




