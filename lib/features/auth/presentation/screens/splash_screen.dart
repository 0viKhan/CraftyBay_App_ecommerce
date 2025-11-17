import 'package:e_commerce_shop/app/extensions/localization_extension.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/language_change_switch.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Spacer(),

              Image.asset('assets/images/Craftybaylogo.png', width: 220, height: 220,),
              Spacer(),
              CircularProgressIndicator(),
              const SizedBox(height: 12),
              Text('Version 1.0'),
              const SizedBox(height: 16),

            ],
          ),
        ),


      ),

    );
  }
}
