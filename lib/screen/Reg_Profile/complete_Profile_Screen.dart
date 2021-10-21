import 'package:flutter/material.dart';
import 'package:loyar/screen/Reg_Profile/components/Body_completeSignUp.dart';

class CompleteProfileScreen extends StatelessWidget{
  static String routeName = "/complete_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up"),
      ),
      body: BodyCompleteSignup(),
    );
  }
}
  
