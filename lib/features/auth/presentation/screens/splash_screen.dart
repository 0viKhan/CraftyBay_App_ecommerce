import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:e_commerce_shop/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart' show State;
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.localization.hello),
      ),
    );
  }
}
