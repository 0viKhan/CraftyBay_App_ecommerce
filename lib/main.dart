import 'dart:ui';

import 'package:e_commerce_shop/app/app.dart';
import 'package:e_commerce_shop/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
//localization
//theme
//crashlytics
//analytics



Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

    options:DefaultFirebaseOptions.currentPlatform,

  );

  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;//framwork error
  //pass all uncaught fatal error from framework
  PlatformDispatcher.instance.onError = (error, stack)
  {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const CraftyBay());
}