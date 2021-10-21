import 'package:flutter/material.dart';
import 'package:loyar/config/constant.dart';
import 'package:loyar/config/palette.dart';


ThemeData theme() {
  return ThemeData(
   // scaffoldBackgroundColor: Colors.grey,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: newMethod(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme newMethod() {
 OutlineInputBorder outlineInputBorder = OutlineInputBorder(
     //correct if you like for the border and spacing on the login issh
      borderRadius: BorderRadius.circular(28),
      borderSide: BorderSide(color: kTextColor),
      gapPadding: 5,
    );
  return InputDecorationTheme(
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 45,
      vertical: 20,
    ),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),
    //remember this centertitle incase of wahala
    centerTitle: true,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF303030),
        fontSize: 19,
      ), 
    ),
  );
}

ThemeData lightThemeData (BuildContext context){
  return ThemeData.light().copyWith(
primaryColor: kPrimaryColor,
scaffoldBackgroundColor: Colors.blue,
appBarTheme: appBarTheme(),
iconTheme: IconThemeData(color: kBackgroundColorLightTheme),
//textTheme: .interTextTheme(Theme.of(context).textTheme).
//apply(bodyColor:kBackgroundColorLightTheme),
colorScheme: ColorScheme.light(
 primary: kPrimaryColor, 
  secondary: kSecondaryColorA, 
  error: kErrorColor, 
  
  ),
  );
}

//ThemeData darkThemeData (BuildContext context){
  //return ThemeData.dark().copyWith(
//primaryColor: kPrimaryColor,
//scaffoldBackgroundColor: kBackgroundColorLightTheme,
//appBarTheme: appBarTheme(),
//iconTheme: IconThemeData(color: kBackgroundColorDarkTheme),
//textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).
//apply(bodyColor:kBackgroundColorLightTheme),
//colorScheme: ColorScheme.dark().copyWith(
  //primary: kPrimaryColor, 
 // secondary: kSecondaryColor, 
  //error: kErrorColor, 
  
  //),
 // );
//}