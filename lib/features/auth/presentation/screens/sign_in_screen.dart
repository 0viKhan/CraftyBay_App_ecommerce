import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
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
                  context.localization.welcomeBack,
                  style: textTheme.titleLarge,
                ),
                Text(
                  context.localization.loginHeadLine,
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 25),
                TextFormField(
                  controller: _emailTEController,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordTEController,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 12),
                FilledButton(
                  onPressed: _onTapLoginButton,
                  child: Text('Login'),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: _onTapSignUpButton,
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLoginButton() {}

  void _onTapSignUpButton() {}

  @override
  void initState() {
    // TODO: implement initState
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.initState();
  }
}
