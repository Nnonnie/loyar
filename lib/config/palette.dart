import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:loyar/config/constant.dart';
import 'package:loyar/screen/size_config.dart';


class Palette {
  static const Color amberDAccent = Color(0xFFFF6F00);
  static const Color blueGrey = Color(0xFF37474F);
  static const Color redAccent = Color(0xFFD50000);
  static const Color grey = Color(0xFF303030);
}

const kPrimaryColor = Color(0xFFFF6F00);
const kPrimaryLightColor = Color(0xFF37474F);
const kprimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFF6F00), Color(0xFFFF6F00)],
);

const kSecondary = Color(0xFFD50000);
//const kTextColor = Color(0xFF303030);
const kSecondaryColorA = Color (0xFF00ACC1);
const kBackgroundColorLightTheme = Color (0xFF4527A0);
const kBackgroundColorDarkTheme = Color (0xFF6200EA);
const kWarningColorLight = Color (0xFFFFCC80);
const kErrorColor = Color (0xFFFFCC80);

const kDefaultPadding = 20.0;

const logoDarkTheme = "";
const logoLightTheme = "";


const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
//form error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9,]+@[a-zA-Z0-9]+\,[a-zA-Z]+");
const String kEmailNullError = "Please Enter your Email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your Passkey";
const String kShortPassError = "Passkey must be at least 10 digits long";
const String kMatchPassError = "Passkey do not match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  enabledBorder: OutlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),  
  filled: false,
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: kTextColor));
}
