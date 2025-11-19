import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});
  static const String name = '/Verify-Otp';

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final TextEditingController _otpTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 120),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Craftybaylogo.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  "verify Otp",
                  style: textTheme.titleLarge,
                ),
                Text(
                  "A 6 digit....",
                  style: textTheme.bodyMedium,
                ),
                PinCodeTextField(
                  length: 6,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                  ),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),



                appContext: context,

                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: _onTapVerifyOtpButton,
                  child: Text('Verify'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _onTapBackToLoginButton,
                  child: Text('Back To LogIn'),
                ),
                Text("Your code will expire 120s resend code")

              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapVerifyOtpButton() {

  }

  void _onTapBackToLoginButton() {
    Navigator.pushReplacementNamed(context, SignInScreen.name);
  }

  @override
  void dispose() {
    _otpTEController.dispose();

    super.dispose();
  }
}
