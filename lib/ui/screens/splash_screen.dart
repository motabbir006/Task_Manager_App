import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_with_sourov/ui/utils/assets_path.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';

import 'login_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override

  @override
  void initState() {
     super.initState();
     _moveToNextScreen();
  }

  Future<void>_moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => loginScreen()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      screenBackground(child: Center(child: SvgPicture.asset(AssetsPath.logoSvg,width: 120,)))
    );
  }
}
