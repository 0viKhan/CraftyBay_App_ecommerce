import 'package:e_commerce_shop/app/app.dart';
import 'package:e_commerce_shop/core/Network_caller.dart';
import 'package:e_commerce_shop/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';

NetworkCaller setUpHttpClient()
{
 return NetworkCaller(accessToken: '', onUnAuthorize: _onUnAuthorize);
}
Future<void>_onUnAuthorize()async
{
 //cache data aikhane thakbe
 Navigator.pushNamedAndRemoveUntil(CraftyBay.navigatorkey.currentContext!, SignInScreen.name,(predicate)=>false,
 );
  //remove cache
}