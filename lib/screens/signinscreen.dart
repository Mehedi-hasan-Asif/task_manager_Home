import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/screens/email_verification_screen.dart';
import 'package:task_manager/screens/navbar/main_bottom_navbar.dart';
import 'package:task_manager/screens/signupscreen.dart';

import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/background_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
                  'Get Started With',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: _onTapNextButton,
                  child: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(
                  height: 36,
                ),
                Center(
                    child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapEmailVerificationButton,
                      child: const Text('Forgot Password?'),
                    ),
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.4),
                          text: "Don't have an account?",
                          children: [
                            TextSpan(
                              text: "Sign up",
                              style:
                                  const TextStyle(color: AppColors.themeColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _onTapSignUpButton();
                                },
                            ),
                          ]),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      )),
    );
  }
  void _onTapNextButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainBottomNavBar(),
      ),
    );

  }

  void _onTapSignUpButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }
  void _onTapEmailVerificationButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const EmailVerification(),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
