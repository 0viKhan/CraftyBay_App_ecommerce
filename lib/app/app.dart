import 'package:e_commerce_shop/app/controller/language_controller.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce_shop/l10n/app_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});
  static final LanguageController languageController = LanguageController();
  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
    analytics: analytics,
  );



  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CraftyBay.languageController,

      builder: (languageController) {
        return MaterialApp(
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],

          navigatorObservers: [observer],
          locale: languageController.currentLocale,
          supportedLocales: languageController.supportedLocales,
          home: SplashScreen(),
        );
      },
    );
  }
}
