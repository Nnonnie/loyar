import 'package:flutter/material.dart';
import 'package:loyar/Components/No_Account_Text.dart';
import 'package:loyar/Components/customer_surffixIcon.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/Components/form_error.dart';
import 'package:loyar/config/palette.dart';
import 'package:loyar/screen/login_suceess/login_sucess_screen.dart';
import 'package:loyar/screen/size_config.dart';


class BodyForgotPasskey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
               SizedBox(height: SizeConfig.screenHeight *0.04),
              Text(
                "Forgot Passkey",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and you will be sent \n a link to access your account",
                textAlign: TextAlign.center,
              ),
               SizedBox(height: SizeConfig.screenHeight *0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
 final _formKey = GlobalKey <FormState>();
  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
              return null;
            },
            validator: (value) {
              if (value.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomerSurffixIcon(
                  svgIcon: "assets/icons/email_black_24dp.svg"),
            ),
          ),
          SizedBox(height:getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight *0.1),
           SizedBox (width:SizeConfig.screenWidth * 0.6),
          DefaultButton(
            text: "Proceed",
            press: () {
              if (_formKey.currentState.validate()){

                //i changed this for routing forget passkey to congratulation home
                Navigator.pushNamed(context,LoginSucessScreen.routeName);
                
              // access the querry with this
            }
            },
          ),
           SizedBox(height: SizeConfig.screenHeight *0.1),
          NoAccountText(),
        ],
      ),
    );
  }
}
