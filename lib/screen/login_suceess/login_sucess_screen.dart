import 'package:flutter/material.dart';
import 'package:loyar/screen/components/body_log_in_success.dart';



class LoginSucessScreen extends StatelessWidget{
  static String routeName ="/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(
         ),
          title:Text("Congratulaton")
      ),
      body: BodyLoginSuccess(),
    );
  }
  
}