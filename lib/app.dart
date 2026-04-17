import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
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
    );
  }
  OutlineInputBorder _getZeroBorder() {
    return  OutlineInputBorder(borderSide: BorderSide.none);
  }
}




