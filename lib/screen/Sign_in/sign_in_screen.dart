import 'package:flutter/material.dart';
import 'package:loyar/screen/Sign_in/components/sign_in_content.dart';



class SignInScreen extends StatelessWidget{
  static String routeName ="/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      title: Text("Log In"),
    ),
    body: Signincontent(),
    );
  }
  
}
   

      
     