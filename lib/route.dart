
import 'package:flutter/cupertino.dart';
import 'package:loyar/screen/Otp_Doc/components/otp_screen.dart';
import 'package:loyar/screen/Reg_Profile/complete_Profile_Screen.dart';
import 'package:loyar/screen/Sign_in/sign_in_screen.dart';
import 'package:loyar/screen/Sign_up/Sign_up_Screen.dart';
import 'package:loyar/screen/SplashScreen/SplashScreen.dart';
import 'package:loyar/screen/forgot_passkey/forgot_passkey_Screen.dart';
import 'package:loyar/screen/login_suceess/login_sucess_screen.dart';
import 'package:loyar/screen/navigation_bar/MainNav_Screen.dart';

import 'home/home_screen .dart';





final Map<String, WidgetBuilder> routes ={
  
SplashScreen.routeName: (context) => SplashScreen(),
SignInScreen.routeName: (context) => SignInScreen(),
ForgotPasskeyScreen.routeName: (context) => ForgotPasskeyScreen(),
LoginSucessScreen.routeName: (context) => LoginSucessScreen(),
SignUpScreen.routeName:(context) => SignUpScreen(),
CompleteProfileScreen.routeName:(context) => CompleteProfileScreen(),
OtpScreen.routeName:(context) => OtpScreen(),
HomeScreen.routeName:(context) => HomeScreen(),
MainNavScreen.routeName:(context) => MainNavScreen(),
};
