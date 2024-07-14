import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/screens/reset_password.dart';
import 'package:task_manager/screens/signinscreen.dart';

import 'package:task_manager/utility/app_colors.dart';
import 'package:task_manager/widgets/background_widget.dart';

class PinVerificationScreen extends StatefulWidget {
  const PinVerificationScreen({super.key});

  @override
  State<PinVerificationScreen> createState() => _PinVerificationScreenState();
}

class _PinVerificationScreenState extends State<PinVerificationScreen> {
  final TextEditingController _otpController = TextEditingController();

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
                  'Pin Verification',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'A 6 digits verification pin has been sent to your email address',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 16),
                _buildToPinSection(),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  onPressed:_onTapVerifyButton,
                  child: const Text("Verify"),
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
    ));
  }

  Widget _buildToPinSection() {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedColor: AppColors.themeColor,
      ),
      animationDuration: const Duration(milliseconds: 300),
      keyboardType: TextInputType.number,
      backgroundColor: Colors.transparent,
      enableActiveFill: true,
      controller: _otpController,
      appContext: context,
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
  void _onTapVerifyButton() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const ResetPassword()
    )
    );


  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
