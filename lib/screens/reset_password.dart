import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:task_manager/screens/signinscreen.dart';

import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/background_widget.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _passwordTeController = TextEditingController();
  final TextEditingController _confirmPasswordTeController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Set Password',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Minimum length password 8 character with letter and number combination',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _passwordTeController,
                  decoration: const InputDecoration(hintText: 'password'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _confirmPasswordTeController,
                  decoration:
                      const InputDecoration(hintText: 'Confirm password'),
                ),
                ElevatedButton(
                  onPressed: _onTapConfirmButton,
                  child: const Text("Confirm"),
                ),
                const SizedBox(
                  height: 36,
                ),
                Center(
                    child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4),
                      text: " Have  account?",
                      children: [
                        TextSpan(
                          text: "Sign In",
                          style: const TextStyle(color: AppColors.themeColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              _onTapSignInButton();
                            },
                        ),
                      ]),
                )),
              ],
            ),
          ),
        ),
      )),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ),
            (route) => false);
  }


  void _onTapConfirmButton() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const SignInScreen(),
        ),
            (route) => false);

  }

  @override
  void dispose() {
    _passwordTeController.dispose();
    _confirmPasswordTeController.dispose();
    super.dispose();
  }
}
