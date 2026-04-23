import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_management_with_sourov/ui/screens/login_screen.dart';
import 'package:task_management_with_sourov/ui/widgets/screen_background.dart';

class resetPasswordScreem extends StatefulWidget {
  const resetPasswordScreem({super.key});


  @override
  State<resetPasswordScreem> createState() => _resetPasswordScreemState();
}

class _resetPasswordScreemState extends State<resetPasswordScreem> {
  @override

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmNewPasswordController = TextEditingController();

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
                  'Set Password',
                  style: Theme.of(context).textTheme.titleLarge,
                ),

                const SizedBox(
                  height: 20,
                ),
                Text('Minimum length password 8 character with letter and number combination ',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey)),
                const SizedBox(height: 25),
                TextFormField(
                  obscureText: !_isPasswordVisible,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  controller: _newPasswordController,
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isPasswordVisible= !_isPasswordVisible ;
                      });
                    }, icon: Icon(
                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ))
                  ),
                ),
                const SizedBox(height: 25),
                TextFormField(
                  obscureText: !_isConfirmPasswordVisible,
                  textInputAction: TextInputAction.next,
                  controller: _confirmNewPasswordController,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        _isConfirmPasswordVisible= !_isConfirmPasswordVisible ;
                      });
                    }, icon: Icon( _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,))
                  ),
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {},
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


  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> loginScreen()), (pre) =>false);
  }

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmNewPasswordController.dispose();// TODO: implement dispose
    super.dispose();
  }

}
