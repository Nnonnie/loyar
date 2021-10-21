import 'package:flutter/material.dart';
import 'package:loyar/Components/customer_surffixIcon.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/Components/services/SocialsSignIn.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/size_config.dart';


class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController confirmpasskeyTextEditingController =
      TextEditingController();
  TextEditingController passkeyTextEditingController = TextEditingController();


  // final _formKey = GlobalKey<FormState>();
  // String email;
  // String passkey;
  // ignore: non_constant_identifier_names
  // String confirm_passkey;
  // final List<String> errors = [];

  // void addError({String error}) {
  // if (errors.contains(error))
  // setState(() {
  // errors.add(error);
  //});
  //}

  //void removeError({String error}) {
  //if (errors.contains(error))
  //setState(() {
  //errors.remove(error);
  //});
  //}

  @override
  Widget build(BuildContext context) {
    return Form(
      //   key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasskeyFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfirmPasskeyFormField(),
          // FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
              text: "Proceed",
              press: () {
                if (!emailTextEditingController.text.contains("@")) {
                  displayToastMessage(kInvalidEmailError, context);
                } else if (passkeyTextEditingController.text.length < 6) {
                  displayToastMessage(kMatchPassError, context);
                } else {
                  AuthMethods().registerNewUser(context);
                }

                {
                  //  Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                }
                // go to complete profile page
              })
        ],
      ),
    );
  }

  TextFormField buildConfirmPasskeyFormField() {
    return TextFormField(
      controller: confirmpasskeyTextEditingController,
      obscureText: true,
      //onSaved: (newValue) => confirm_passkey = newValue,
      //onChanged: (value) {
      //if (passkey == confirm_passkey) {
      //removeError(error: kMatchPassError);
      //}

      //return null;
      //},
      // validator: (value) {
      //   if (value.isEmpty) {
      //     return "";

      //note this change it back to comfirm_passkey remember sign in form too
      //  } else if (passkey != value) {
      //    addError(error: kMatchPassError);
      //    return "";
      // }
      //   return null;
      //}
      decoration: InputDecoration(
        labelText: "Confirm Passkey",
        hintText: "Re-enter your passkey",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            svgIcon: "assets/icons/pass_key_black_24dp.svg"),
      ),
    );
  }

  TextFormField buildPasskeyFormField() {
    return TextFormField(
      controller: passkeyTextEditingController,
      obscureText: true,
      // onSaved: (newValue) => passkey = newValue,
      //onChanged: (value) {
      // if (value.isNotEmpty) {
      //   removeError(error: kPassNullError);
      // } else if (value.length >= 10) {
      //   removeError(error: kShortPassError);
      // }
      // passkey = value;
      // return null;
      //},
      //validator: (value) {
      //  if (value.isEmpty) {
      //    addError(error: kPassNullError);
      //  return "";
      //} else if (value.length < 10) {
      //addError(error: kShortPassError);
      //}
      //return null;
      //},
      decoration: InputDecoration(
        labelText: "Passkey",
        hintText: "Enter your passkey",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            svgIcon: "assets/icons/pass_key_black_24dp.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailTextEditingController,
      keyboardType: TextInputType.emailAddress,
      //onSaved: (newValue) => email = newValue,
      //onChanged: (value) {
      //if (value.isNotEmpty && errors.contains(kEmailNullError)) {
      //setState(() {
      //errors.remove(kEmailNullError);
      //});
      //} else if (emailValidatorRegExp.hasMatch(value) &&
      //  errors.contains(kInvalidEmailError)) {
      //setState(() {
      //errors.remove(kInvalidEmailError);
      // });
      //}
      //return null;
      //},
      //   validator: (value) {
      //   if (value.isEmpty && !errors.contains(kEmailNullError)) {
      //     setState(() {
      //       errors.add(kEmailNullError);
      //   });
      //   } else if (!emailValidatorRegExp.hasMatch(value) &&
      //       !errors.contains(kInvalidEmailError)) {
      //     setState(() {
      //      errors.add(kInvalidEmailError);
      //    });
      //  }
      //  return null;
      //  },

      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomerSurffixIcon(svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }
//final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 // void registerNewUser(BuildContext context) async {
  //   showDialog(context: context,
  //  barrierDismissible: false,
   // builder: (BuildContext context ){
   //   return ProgressDialog(message: "Registering,Please wait...",);
   // }
   // ); 
   // final User firebaseUser = (await _firebaseAuth
   //         .createUserWithEmailAndPassword(
   //             email: emailTextEditingController.text,
   //             password: passkeyTextEditingController.text)
   //         .catchError((errMsg) {
    //          Navigator.pop(context);
    //  displayToastMessage("Error" + errMsg.toString(), context);
   // }))
    //    .user;

   // if (firebaseUser != null) {
   //   Map userDataMap = {
    //    "email": emailTextEditingController.text.trim(),
    //  };
     // usersRef.child(firebaseUser.uid).set(userDataMap);
     // displayToastMessage(
     //     "Congratulation the First stage of signing up has been completed",
     //     context);
     // Navigator.pushNamed(context, CompleteProfileScreen.routeName);
  //  } else {
   //   Navigator.pop(context);
      //error occured - display error msg
   //   displayToastMessage("User account has not been Created ", context);
   // }
 // }
  
}