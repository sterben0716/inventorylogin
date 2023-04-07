import 'package:flutter/material.dart';
import 'package:inventory_systems/signup_page.dart';
import 'package:inventory_systems/utils/color_utils.dart';
import 'package:inventory_systems/widgets/reusable_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringColor("#004493"),
            hexStringColor("#ADD1FA"),
            hexStringColor("#D18113"),
            hexStringColor("#EAA648"),
            hexStringColor("#FFDDAF"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height *0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("images/logo2.png"),
                SizedBox(
                  height: 10,
                ),
                reusableTexfield("Enter Username", Icons.person_outline, false, _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTexfield("Enter Password", Icons.lock_outline, true, _passwordTextController),
                SizedBox(
                  height: 10,
                ),
                forgotPassword(),
                SizedBox(
                  height: 10,
                ),
                signInSignUpButton(context, true, () {} ),
                signUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Row forgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: const Text (
              "Forgot Password?",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
            )
        )
      ],
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
          style: TextStyle(color: Colors.black)
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: const Text (
            "Sign Up",
            style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          )
        )
      ],
    );
  }
}