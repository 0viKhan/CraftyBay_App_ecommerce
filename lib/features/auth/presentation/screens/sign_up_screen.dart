import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String name = '/sign-Up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _addressTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

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
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/Craftybaylogo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Text(
                 "Create  new account",
                  style: textTheme.titleLarge,
                ),
                Text(
                  "Please Enter Your Details",
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _firstNameTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'First Name'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _lastNameTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Last Name'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _mobileTEController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: 'Mobile'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _addressTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'City'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordTEController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 12),

                FilledButton(
                  onPressed: _onTapSignUpButton,
                  child: Text('SignUp'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _onBackToLogin,
                  child: Text('Back To Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.pushReplacementNamed(context, VerifyOtpScreen.name);
  }

  void _onBackToLogin() {
Navigator.pop(context);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _addressTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}