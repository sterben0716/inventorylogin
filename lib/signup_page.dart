import 'package:flutter/material.dart';
import 'package:inventory_systems/utils/color_utils.dart';
import 'package:inventory_systems/widgets/reusable_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
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
            padding: EdgeInsets.fromLTRB(20,
                MediaQuery.of(context).size.height *0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("images/signup.png"),
                const SizedBox(
                  height: 20,
                ),
                reusableTexfield(
                    "Enter Username",
                    Icons.person_outline, 
                    false, 
                    _usernameTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTexfield(
                    "Enter Email",
                    Icons.alternate_email_outlined,
                    false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTexfield(
                    "Enter Password",
                    Icons.lock_outlined,
                    true,
                    _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, false, () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
