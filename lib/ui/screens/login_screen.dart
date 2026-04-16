import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';

import '../utils/assets_path.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.arrow_circle_right_outlined),
              ),
              const SizedBox(height: 26),
           Center(
             child: Column(
               children: [
                 TextButton(onPressed: _onTapForgetPassword, child: Text('Forgot Password?')),
                 RichText(text: TextSpan(
                     style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.w600,
                         fontSize: 14
                     ),
                     children: [
                       TextSpan(text: "Don't have account?  "),
                       TextSpan(text: "Sign in",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                       recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton
                       ),

                     ]
                 ))
               ],
             ),
           )

            ],
          ),
        ),
      ),
    );
  }
  void _onTapSignInButton(){

}

  void _onTapForgetPassword(){

  }
}
