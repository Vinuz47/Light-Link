
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:light_link/Screen/home_screen.dart';

import '../reusable_widget/reusable_widget.dart';
import '../utils/colours.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  bool otpVisibility = false;

  String verificationID = "";
  bool  _isHidden = true;

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
                    phoneController),

                    const Text('Start with your mobile number: +94..',
                    style:TextStyle(fontWeight: FontWeight.w500),
                    ),
                  

                const SizedBox(
                  height: 10,
                ),

              

                Visibility(
                  child: reusableTextField1(
                    "Enter OTP Number ", Icons.phone_android, false,
                    otpController),visible: otpVisibility,),

                const SizedBox(
                  height: 30,
                ),

                ElevatedButton(
                  //Icon(Icons.login_rounded),
                  
                  //label: Text("Sign In"),
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
                  onPressed: () {
                if(otpVisibility){
                    verifyOTP();

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) =>const CustomerHomeScreen()),
                    // );
                  
                  }
                  else {
                    loginWithPhone();
                  }
                  },
                  child: Text(otpVisibility ? "Verify" : "Login")),
                  
                

                const SizedBox(
                  height: 30,
                ),
              
              ],
            ),
          ),
        ),
      ),
    );
  }




  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: phoneController.text,
      verificationCompleted: (phoneAuthCredential) async => await CustomerHomeScreen(),
      //(PhoneAuthCredential credential) async {
        // await auth.signInWithCredential(credential).then((value){
        //   print("You are logged in successfully");
        // });
     // },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {
      },
    );
  }

  void verifyOTP() async {

    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then((value){
      print("You are logged in successfully");
      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) =>const CustomerHomeScreen()),
                    );
    
      Fluttertoast.showToast(
          msg: "You are logged in successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          timeInSecForIosWeb: 2, //time that msg will show
          backgroundColor:const Color.fromARGB(255, 102, 169, 204),
          textColor: Colors.white,
          fontSize: 14.0
      );
      
    });

  
  }

  TextEditingController phoneNumberfunc(){
    return phoneController;
  }
}


