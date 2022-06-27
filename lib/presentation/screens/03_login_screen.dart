// ignore_for_file: deprecated_member_use, avoid_print, file_names, prefer_const_constructors_in_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/of_signup_and_login_screens/change_initial_screen.dart';
import '../widgets/of_signup_and_login_screens/entery_headline.dart';
import '../widgets/of_signup_and_login_screens/my_button.dart';
import '../widgets/of_signup_and_login_screens/my_password_form_field.dart';
import '../widgets/of_signup_and_login_screens/my_text_form_field.dart';

import '02_signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();
final _scaffoldKey = GlobalKey<ScaffoldState>();
String p =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
RegExp regExp = RegExp(p);
bool hiddenText = true;
late String email;
late String password;

Future<void> validation() async {
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
      _scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(e.message!),
        ),
      );
    }
  } else {}
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _buildButtomOfScreen() {
    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          //E-Mail Form Field
          MyTextFormField(
            keyboardInputType: TextInputType.emailAddress,
            onChangedFunction: (input) {
              setState(() {
                email = input;
                print(email);
              });
            },
            validator: (value) {
              if (value == "") {
                return "Please Enter Your E-Mail Address";
              } else if (!regExp.hasMatch(value!)) {
                return "E-Mail Address Is Invalid";
              }
              return null;
            },
            prefixIcon: const Icon(Icons.mail),
            labelTextName: "E-Mail",
            hintTextName: "name@example.com",
          ),
          //Password Form Field
          MyPasswordFormField(
            hiddenText: hiddenText,
            onChangedFunction: (input) {
              setState(() {
                password = input;
                print(password);
              });
            },
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
          ),
          //LogIn Button
          MyButton(
            name: "LOG IN",
            onPressed: () {
              validation();
            },
          ),
          //SignUp If You Don't Have Account(Text)
          ChangeInitialScreen(
            name: "Signup",
            expressiveText: "I Have Not Account!",
            onTap: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
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
        body: Form(
          key: _formKey,
          // ignore: sized_box_for_whitespace
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EnteryHeadline(brandName: "Commercial App", text: "Login"),
                _buildButtomOfScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
