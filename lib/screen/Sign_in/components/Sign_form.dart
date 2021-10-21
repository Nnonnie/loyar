//import 'dart:js_util';

//import 'package:nornknee/home/home_screen%20.dart';

import 'package:flutter/material.dart';
import 'package:loyar/Components/customer_surffixIcon.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/Components/form_error.dart';
import 'package:loyar/Components/services/SocialsSignIn.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/forgot_passkey/forgot_passkey_Screen.dart';
import 'package:loyar/screen/navigation_bar/MainNav_Screen.dart';
import 'package:loyar/screen/size_config.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  //final _formKey = GlobalKey<FormState>();
  // String email;
  //String passkey;
  bool remember = false;
  final List<String> errors = [];
  //newly added for firebase authentication
 
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passkeyTextEditingController = TextEditingController();
  //void addError({String error}) {
  //  if (errors.contains(error))
  //   setState(() {
  //     errors.add(error);
  //   });
  //}

  // void removeError({String error}) {
  //  if (errors.contains(error))
  //   setState(() {
  //    errors.remove(error);
  //  });
  //}

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasskeyFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value;
                  });
                },
              ),
              Text("Save Log In"),
              Spacer(),
              GestureDetector(
                //passkey remeber to change soon
                onTap: () =>
                    Navigator.pushNamed(context, ForgotPasskeyScreen.routeName),
                child: Text(
                  "Forgot Passkey",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Proceed",
            press: () {
              if (!emailTextEditingController.text.contains("@")) {
                displayToastMessage(kInvalidEmailError, context);
              } else if (passkeyTextEditingController.text.isEmpty) {
                displayToastMessage(kPassNullError, context);
              } //else
               {
                //  AuthMethods().logInWithAuth(context);
              }

              //if all are valid then go to success screen
               Navigator.pushNamed(context, MainNavScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasskeyFormField() {
    return TextFormField(
      //newly added for firebase authentication
      controller: passkeyTextEditingController,
      obscureText: true,
      // onSaved: (newValue) => passkey = newValue,
      //onChanged: (value) {
      //  if (value.isNotEmpty) {
      //   removeError(error: kPassNullError);
      // } else if (value.length >= 10) {
      //   removeError(error: kShortPassError);
      //}

      //return null;

      // },
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
      //newly added for firebase authentication
      controller: emailTextEditingController,

      //% manual valiadating  without firebase %//

      // keyboardType: TextInputType.emailAddress,
      //  onSaved: (newValue) => email = newValue,
      //onChanged: (value) {
      //  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
      //  setState(() {
      //   errors.remove(kEmailNullError);
      // });
      //} else if (emailValidatorRegExp.hasMatch(value) &&
      //    errors.contains(kInvalidEmailError)) {
      //  setState(() {
      //   errors.remove(kInvalidEmailError);
      // });
      //}
      // return null;
      // },

      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomerSurffixIcon(svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }

}