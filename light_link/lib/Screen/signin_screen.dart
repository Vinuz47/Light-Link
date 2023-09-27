
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:light_link/Screen/home_screen.dart';
import 'package:light_link/Screen/signup_screen.dart';
import '../reusable_widget/reusable_widget.dart';
import '../utils/colours.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _mobilenumberTextController = TextEditingController();
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("6499E9"),
              hexStringToColor("9EDDFF"),
              hexStringToColor("A6F6FF")

            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery
                .of(context)
                .size
                .height * 0.2, 20, 400),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/design.png"),

                const SizedBox(
                  height: 30,
                ),

                reusableTextField1(
                    "Enter Mobile Number ", Icons.phone_android, false,
                    _mobilenumberTextController),

                const SizedBox(
                  height: 20,
                ),

                reusableTextField2(
                    "Enter Password", Icons.lock_outline, _isHidden,
                    _passwordTextController),

                const SizedBox(
                  height: 5,
                ),

                forgetPassword(context),
                // firebaseUIButton(context, "Sign In", () {
                //   FirebaseAuth.instance.signInWithEmailAndPassword(
                //       email: _emailTextController.text,
                //       password: _passwordTextController.text)
                //       .then((value) {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context)=> SignUpSelectionScreen()));
                //   }).onError((error, stackTrace) {
                //     print("Error ${error.toString()}");
                //   });
                // }),
                ElevatedButton.icon(
                  icon: Icon(Icons.login_rounded),
                  label: Text("Sign In"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CustomerHomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.all(10.0),
                    fixedSize: Size(520, 50),
                    textStyle:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    elevation: 10,
                    //shadowColor: Colors.black,
                    //  side: BorderSide(color: Colors.black, width: 2),
                    shape: StadiumBorder(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // ElevatedButton.icon(
                //   onPressed: () async {
                //     await FirebaseServices().signInWithGoogle();
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => HomeScreen()));
                //   },
                //
                //   icon: Icon(Icons.g_mobiledata_sharp),
                //   label: Text("Sign In with Google"),
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.red, // Change the color as per your preference
                //     onPrimary: Colors.white,
                //   ),
                // ),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(color: Colors.black)),
        GestureDetector(
          onTap: () {
            Navigator.push(context as BuildContext,
                MaterialPageRoute(builder: (context) => SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget forgetPassword(BuildContext context) {
    return Container(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: 35,
      alignment: Alignment.bottomRight,
      child: TextButton(
        child: const Text(
          "Forgot Password?",
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ),
        onPressed: () =>
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen())),
      ),
    );
  }
}


