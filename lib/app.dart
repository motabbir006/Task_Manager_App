import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }

}