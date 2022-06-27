// ignore_for_file: avoid_print, sized_box_for_whitespace, unused_local_variable, deprecated_member_use, file_names, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/of_signup_and_login_screens/change_initial_screen.dart';
import '../widgets/of_signup_and_login_screens/entery_headline.dart';
import '../widgets/of_signup_and_login_screens/my_button.dart';
import '../widgets/of_signup_and_login_screens/my_password_form_field.dart';

import '../widgets/of_signup_and_login_screens/my_text_form_field.dart';

import '03_login_screen.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final _formKey = GlobalKey<FormState>();
final _scaffoldKey = GlobalKey<ScaffoldState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = RegExp(p);
bool hiddenText = true;
late String email;
late String password;

class _SignUpScreenState extends State<SignUpScreen> {
  void validation() async {
    final FormState? _formState = _formKey.currentState;
    if (!_formState!.validate()) {
      try {
        UserCredential result =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        print(result.user?.uid);
      } on PlatformException catch (e) {
        print(e.message.toString());
        _scaffoldKey.currentState?.showSnackBar(
          SnackBar(
            content: Text(e.message!),
          ),
        );
      }
    } else {}
  }

  Widget _buildAllTextFormField() {
    return Container(
      height: 355,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          //User Name TextButton
          MyTextFormField(
            keyboardInputType: TextInputType.name,
            validator: (value) {
              if (value == "") {
                return "Please Enter Your User Name";
              }
              if (value!.length < 6) {
                return "User Name Must Be Between 6 to 50 Characters Long";
              } else if (value.length > 50) {
                return "User Name Must Be Between 6 to 50 Characters Long";
              } else {
                return null;
              }
            },
            prefixIcon: const Icon(Icons.account_circle),
            labelTextName: "Username",
          ),
          //E-Mail TextButton
          MyTextFormField(
            keyboardInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == "") {
                return "Please Enter Your E-Mail Address";
              } else if (!regExp.hasMatch(value!)) {
                return "E-Mail Address Is Invalid";
              }
              return null;
            },
            onChangedFunction: (input) {
              setState(() {
                email = input;
                print(email);
              });
            },
            prefixIcon: const Icon(Icons.mail),
            labelTextName: "E-Mail",
            hintTextName: "name@example.com",
          ),
          //Password TTextButton
          MyPasswordFormField(
            hiddenText: hiddenText,
            validator: (value) {
              if (value == "") {
                return "Please Enter Your Password";
              } else if (value!.length < 8) {
                return "Password Must Be Between 8 to 32 Characters Long";
              } else if (value.length > 32) {
                return "Password Must Be Between 8 to 32 Characters Long";
              } else {
                return null;
              }
            },
            onTap: () {
              FocusScope.of(context).unfocus();
              setState(
                () {
                  hiddenText = !hiddenText;
                },
              );
            },
            onChangedFunction: (input) {
              setState(() {
                password = input;
                print(password);
              });
            },
          ),
          //Phone Number TTextButton
          MyTextFormField(
            keyboardInputType: TextInputType.number,
            validator: (value) {
              if (value == "") {
                return "Please Enter Your Phone Number";
              }
              if (value!.length < 11) {
                return "Phone Number Must Be 11 Numbers Long";
              } else if (value.length > 11) {
                return "Phone Number Must Be 11 Numbers Long";
              } else {
                return null;
              }
            },
            prefixIcon: const Icon(Icons.mobile_friendly),
            labelTextName: "Phone number",
          ),
        ],
      ),
    );
  }

  Widget _buildBottomOfScreen() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildAllTextFormField(),
          const SizedBox(height: 14),
          MyButton(
            name: "REGISTER",
            onPressed: () {
              validation();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 14),
          ChangeInitialScreen(
            expressiveText: "I Already Have An Account!",
            name: "Login",
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: _scaffoldKey,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const AlwaysScrollableScrollPhysics(),
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  EnteryHeadline(
                      brandName: "Commercial App", text: "Registration"),
                  _buildBottomOfScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
