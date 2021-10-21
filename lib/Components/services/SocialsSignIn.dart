import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loyar/Components/Dialog/progressdialog.dart';
import 'package:loyar/main.dart';
import 'package:loyar/screen/Reg_Profile/complete_Profile_Screen.dart';
import 'package:loyar/screen/navigation_bar/MainNav_Screen.dart';


class AuthMethods{
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController confirmpasskeyTextEditingController =
      TextEditingController();
  TextEditingController passkeyTextEditingController = TextEditingController();
  
  final FirebaseAuth auth = FirebaseAuth.instance;
  getCurrentUser(){
    return auth.currentUser;
  }

registerNewUser(BuildContext context)async{
   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
   showDialog(context: context,
    barrierDismissible: false,
    builder: (BuildContext context ){
      return ProgressDialog(message: "Registering,Please wait...",);
    }
    ); 
    final User firebaseUser = (await _firebaseAuth
            .createUserWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passkeyTextEditingController.text
                )
            .catchError((errMsg) {
              Navigator.pop(context);
      displayToastMessage("Error" + errMsg.toString(), context);
    }))
        .user;

    if (firebaseUser != null) {
      Map userDataMap = {
        "email": emailTextEditingController.text.trim(),
      };
      usersRef.child(firebaseUser.uid).set(userDataMap);
      displayToastMessage(
          "Congratulation the First stage of signing up has been completed",
          context);
      Navigator.pushNamed(context, CompleteProfileScreen.routeName);
    } else {
      Navigator.pop(context);
      //error occured - display error msg
      displayToastMessage("User account has not been Created ", context);
    }
  
  }
  //logInWithEmail
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void logInWithAuth(BuildContext context) async {
    showDialog(context: context,
    barrierDismissible: false,
    builder: (BuildContext context ){
      return ProgressDialog(message: "Authenticating,Please wait...",);
    }
    );

    final User firebaseUser = (await _firebaseAuth
            .signInWithEmailAndPassword(
                email: emailTextEditingController.text,
                password: passkeyTextEditingController.text)
            .catchError((errMsg) {
              Navigator.pop(context);
    displayToastMessage("Error" + errMsg.toString(), context);
    }))
        .user;

    if (firebaseUser != null)
     {
            usersRef.child(firebaseUser.uid).once().then((DataSnapshot snap)
            {
        if (snap.value !=null)
        {
        Navigator.pushNamed(context, MainNavScreen.routeName);
          displayToastMessage(
          "Access Granted Chief",
          context);
            }
       else
        {
      //error occured - display error msg
      Navigator.pop(context);
      _firebaseAuth.signOut(); 
      displayToastMessage("Not a registered user,Please create an account", context);
                }
            });
     }
     else{
       Navigator.pop(context);
       displayToastMessage("Error occured, user can not be signed-in",context);
     }
  }
}

//toast message
displayToastMessage(String message,BuildContext context )
{
  Fluttertoast.showToast(msg: message);
}

