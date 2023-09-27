
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:light_link/Screen/signin_screen.dart';
import '../reusable_widget/reusable_widget.dart';
import '../utils/colours.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState  extends State<SignUpScreen> {
  TextEditingController _mobilenumberTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _locationTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Sign Up",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors:[
                hexStringToColor("6499E9"),
                hexStringToColor("9EDDFF"),
                hexStringToColor("A6F6FF")
              ],begin: Alignment.topCenter, end: Alignment.bottomCenter )),
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(30,220,20,400),
                child: Column(
                  children:<Widget> [
                    const  SizedBox(
                      height: 30,
                    ),

                    reusableTextField1("Enter UserName", Icons.person_outline, false,
                        _usernameTextController),
                    const SizedBox(
                      height: 20,
                    ),
                    reusableTextField1("Enter Mobile Number", Icons.phone_android, false,
                        _mobilenumberTextController),
                    const SizedBox(
                      height: 20,
                    ),

                    reusableTextField1("Enter Password", Icons.lock_outline, true,
                        _passwordTextController),
                    const SizedBox(
                      height: 20,
                    ),

                    firebaseUIButton(context, "Sign Up", () {
                      FirebaseAuth.instance
                          .createUserWithEmailAndPassword(
                          email: _mobilenumberTextController.text,
                          password: _passwordTextController.text)
                          .then((value) {
                        print("Created New Account");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> SignInScreen()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      }
                      );
                    }),
                  ],
                ),
              ))),
    );
  }
}