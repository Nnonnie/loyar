import 'package:flutter/material.dart';
import 'package:loyar/screen/Otp_Doc/components/body_otp.dart';


class OtpScreen extends StatelessWidget{
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"
        ),
      ),
body: BodyOtp(),
    );
  }
}