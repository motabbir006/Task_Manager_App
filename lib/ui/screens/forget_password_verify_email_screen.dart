import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_management_with_sourov/ui/screens/forgot_password_pin_verification.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';

class forgotPasswordVerifyEmail extends StatefulWidget {
  const forgotPasswordVerifyEmail({super.key});

  @override
  State<forgotPasswordVerifyEmail> createState() => _forgotPasswordVerifyEmailState();
}

class _forgotPasswordVerifyEmailState extends State<forgotPasswordVerifyEmail> {
  @override

  final TextEditingController _emailTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: screenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                Text(
                  'Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(
                  height: 20,
                ),
                Text('A 6 digit verification pin will be sent to your email. ',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey)),
                const SizedBox(height: 25),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailTEController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: _onTapSubmitButton,
                  child: const Icon(Icons.arrow_circle_right_outlined),
                ),
                const SizedBox(height: 26),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      children: [
                        TextSpan(text: "Already have an account?  "),
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => _onTapSignInButton(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton(){
    Navigator.pushNamed(context, '/pin_verification');
  }

  void _onTapSignInButton(){
   Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();

    super.dispose();
  }

}
