import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management_with_sourov/ui/screens/login_screen.dart';
import 'package:task_management_with_sourov/ui/screens/reset_password_screen.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';

class forgotPasswordPinVerificationScreen extends StatefulWidget {
  const forgotPasswordPinVerificationScreen({super.key});

  @override
  State<forgotPasswordPinVerificationScreen> createState() => _forgotPasswordPinVerificationScreenState();
}

class _forgotPasswordPinVerificationScreenState extends State<forgotPasswordPinVerificationScreen> {
  @override

  final TextEditingController _pinCodeController = TextEditingController();

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
                  'PIN Verification',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(
                  height: 20,
                ),
                Text('A 6 digit verification pin has been sent to your email. ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey)),
                const SizedBox(height: 25),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    activeColor: Colors.white,
                    selectedColor: Colors.white,
                    inactiveFillColor: Colors.white,

                  ),
                  animationDuration: Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  controller: _pinCodeController,
                  appContext: context,

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
    Navigator.push(context, MaterialPageRoute(builder: (context)=> resetPasswordScreem()));
}
  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> loginScreen()), (pre) =>false);
  }

}
