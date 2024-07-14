import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/background_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
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
                  'Join With Us',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _firstNameController,
                  decoration: const InputDecoration(hintText: 'First Name'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: _lastNameController,
                  decoration: const InputDecoration(hintText: 'Last Name'),
                ),
                TextFormField(
                  controller: _mobileController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(hintText: 'Number'),
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
                  onPressed: () {},
                  child: const Icon(Icons.arrow_forward_ios),
                ),
                const SizedBox(
                  height: 36,
                ),
                _buildToSignInSection(),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _buildToSignInSection() {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.w600,
              letterSpacing: 0.4),
          text: "Have account?",
          children: [
            TextSpan(
                text: "Sign In",
                style: const TextStyle(color: AppColors.themeColor),
                recognizer: TapGestureRecognizer()..onTap = _onTapSignInButton)
          ],
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    _mobileController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }
}
