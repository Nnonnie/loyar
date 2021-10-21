import 'package:flutter/material.dart';
import 'package:loyar/Components/customer_surffixIcon.dart';
import 'package:loyar/Components/default_button.dart';
import 'package:loyar/Components/services/SocialsSignIn.dart';
import 'package:loyar/screen/Otp_Doc/components/otp_screen.dart';
import 'package:loyar/screen/size_config.dart';

//import 'package:nornknee/config/palette.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  TextEditingController firstnameTextEditingController =
      TextEditingController();
  TextEditingController lastnameTextEditingController =
      TextEditingController();
  TextEditingController phoneTextEditingController =
      TextEditingController();
  TextEditingController addressTextEditingController =
      TextEditingController();
 

  //manual means of authentication

  // final _formKey = GlobalKey<FormState>();
  // final List<String> errors = [];
  // String firstName;
  // String lastName;
  // String phoneNumber;
  // String address;

  //void addError({String error}) {
  //  if (!error.contains(error))
  //    setState(() {
  //     errors.add(error);
  //   });
  // }

  // void removeError({String error}) {
  //   if (errors.contains(error))
  //   setState(() {
  //     errors.remove(error);
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return Form(
      //key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAddressFormField(),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
              text: "Continue",
              press: () {
               AuthMethods().registerNewUser(context);
                //  completeRegisterNewUser(context)
                //  if (_formKey.currentState.validate()) {
                // get otp
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
              // },
              ),
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      controller: addressTextEditingController,
      // onSaved: (newValue) => address = newValue,
      // onChanged: (value) {
      //  if (value.isNotEmpty) {
      //    removeError(error: kAddressNullError);
      //  }
      //  return null;
      // },
      // validator: (value) {
      //   if (value.isEmpty) {
      //   addError(error: kAddressNullError);

      // return "";
      //}//
      //return null;
      //},
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your Address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            //change icon to image
            svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      controller: phoneTextEditingController,
      //textinputtype is for the format of keying data be it number, email...
      keyboardType: TextInputType.number,
      // onSaved: (newValue) => phoneNumber = newValue,
      //onChanged: (value) {
      //if (value.isNotEmpty) {
      //removeError(error: kPhoneNumberNullError);
      //}
      //return null;
      //},
      //validator: (value) {
      //if (value.isEmpty) {
      //addError(error: kPhoneNumberNullError);
      //return "";
      //}
      //return null;
      //},
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            //change icon to image
            svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      controller: lastnameTextEditingController,
      //onSaved: (newValue) => lastName = newValue,
      //deleteded for lastName 1
      decoration: InputDecoration(
        labelText: "Last Name",
        hintText: "Enter your Last Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            //change icon to image
            svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      controller: firstnameTextEditingController,
      //onSaved: (newValue) => firstName = newValue,
      //onChanged: (value) {
      //if (value.isNotEmpty) {
      //removeError(error: kNameNullError);
      //}
      //return null;
      //},
      //validator: (value) {
      //if (value.isEmpty) {
      //addError(error: kNameNullError);

      //return "";
      //}
      //return null;
      //},
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomerSurffixIcon(
            //change icon to image
            svgIcon: "assets/icons/email_black_24dp.svg"),
      ),
    );
  }
  
  

  }

