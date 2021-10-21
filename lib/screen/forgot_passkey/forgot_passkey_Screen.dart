import 'package:flutter/material.dart';
import 'package:loyar/screen/forgot_passkey/body_forgot_passkey.dart';

class ForgotPasskeyScreen extends StatelessWidget {
  static String routeName = "/forgot passkey";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Passkey"),
      ),
      body: BodyForgotPasskey(),
    );
  }
}
