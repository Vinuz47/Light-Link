import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:light_link/Screen/signin_screen.dart';
import 'package:lottie/lottie.dart';

import '../utils/colours.dart';

class /// The `CustomerHomeScreen` class is a StatefulWidget that represents the home screen for a customer in a Flutter application. It displays a gradient background and an app bar with a title and two action buttons. The body of the screen contains several buttons with icons and labels, along with switches. The buttons allow the user to perform various actions such as viewing their location, marking different stages of a job, and logging out. The switches control the enabled/disabled state of the corresponding buttons.
CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);
  // final String email;
  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
  //var c = new CustomerHomeScreen();

}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
 // _CustomerHomeScreenState c = new _CustomerHomeScreenState();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final locationController = TextEditingController();
  String? selectedValue;
  bool isButtonClickableG = true;
  bool isButtonClickableR = false;
  bool isButtonClickableW = false;
  bool isButtonClickableJ = false;
  bool isButtonClickableReset = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  int going = 1;
  int reach = 1;
  int work = 1;
  int jdone = 1;
  
  



//_CustomerHomeScreenState c = new _CustomerHomeScreenState();
//var c = _CustomerHomeScreenState();

  void _logout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>const SignInScreen()),
    );
  }

  // void _click(){

  // }

  // void _viewProfile() {
  //   setState(() {
  //     //  selectedValue = widget.email;
  //   });
  // }

  // bool _setDisable(){
  //   if(dd == true){
  //     return true;
  //   }
  //   else{
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors:[
            hexStringToColor("6499E9"),
            hexStringToColor("9EDDFF"),
            hexStringToColor("A6F6FF")
          ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,)
        //  colors: [Colors.purple, Colors.blue],
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:const Text("Home Screen"),
          backgroundColor: Colors.transparent,
          actions: [
            // PopupMenuButton<String>(
            //   icon: Icon(Icons.accessibility_new_outlined),
            //   initialValue: selectedValue,
            //   onSelected: (String newValue) {
            //     setState(() {
            //       selectedValue = newValue;
            //     });
            //   },
            //   itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            //   //  PopupMenuItem<String>(
            //      // value: 'Email: ${widget.email}',
            //      // child: Text('Email: ${widget.email}'),
            //    // ),
            //   ],
            // ),
            const SizedBox(width: 5),
            IconButton(
              icon:const Icon(Icons.logout),
              onPressed: _logout,
            ),
          ],
        ),

        body: Center(

          child: SingleChildScrollView(
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                  TextField(
                    decoration:const InputDecoration(
                      
                      hintText: "Enter Your Name",
                      icon:Icon(Icons.person),
                      enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 134, 132, 132)),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      ),
                      iconColor: Color.fromARGB(255, 51, 50, 50),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                      fillColor: Color.fromARGB(150, 80, 84, 85),
                      filled:false ,
                    ),
                    controller: nameController,
                    //hintText: "type name";
                  ),

                  TextField(
                    decoration:const InputDecoration(
                      
                      hintText: "Enter Mobile Number",
                      icon:Icon(Icons.phone),
                      enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 134, 132, 132)),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      ),
                      iconColor: Color.fromARGB(255, 51, 50, 50),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                      fillColor: Color.fromARGB(150, 80, 84, 85),
                      filled:false ,
                    ),
                    controller: phoneNumberController,
                    //hintText: "type name";
                  ),

                  TextField(
                    decoration:const InputDecoration(
                      
                      hintText: "Enter Location",
                      icon:Icon(Icons.location_on),
                      enabledBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 134, 132, 132)),
                      ),
                      focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      ),
                      iconColor: Color.fromARGB(255, 51, 50, 50),
                      hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold),
                      fillColor: Color.fromARGB(150, 80, 84, 85),
                      filled:false ,
                    ),
                    controller: locationController,
                    //hintText: "type name";
                  ),

                  
                
              //mainAxisAlignment: MainAxisAlignment.center,
              
          
              
                
          
                const SizedBox(height: 20),
            
                // ElevatedButton.icon(
                //   icon:const Icon(Icons.location_on_outlined),
                //   label:const Text("| Location",
                //     style: TextStyle(
                //         fontSize: 18
                //     ),),
                //   onPressed: (){
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => MapSample()),
                //     );
                //   },
                //   style: ElevatedButton.styleFrom(
                //     padding:const EdgeInsets.all(20.0),
                //     fixedSize:const Size(180, 60),
                //     textStyle:const
                //     TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //     elevation: 30,
                //     shadowColor: Colors.black,
                //     side:const BorderSide(color: Colors.black, width: 2),
                //     shape:const StadiumBorder(),
                //   ),
                // ),
          
                const SizedBox(height: 20),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  
          /////////////////////////////////////////////      GOING BUTTON     ///////////////////////////////////////////////////////////////////////////////////
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      disabledBackgroundColor:const Color.fromARGB(255, 94, 87, 86),
                      disabledForegroundColor: Colors.white,
                      padding:const EdgeInsets.all(5.0),
                      fixedSize:const Size(180, 60),
                      textStyle:isPressed1?
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold):const TextStyle(fontSize: 18,),
                        elevation: 30,
                        shadowColor: Colors.black,
                        side:isPressed1?const BorderSide(color: Colors.black, width: 3):const BorderSide(color: Colors.black, width: 2) ,
                        shape:const StadiumBorder(),
                        backgroundColor: isPressed1? const Color.fromARGB(255, 211, 27, 14): Colors.blue,
                      ),
                      
                      onPressed: isButtonClickableG? (){
                        ++going;
                        if (going%2==0){
                        setState(() {
                          isPressed1 = !isPressed1;
                          const goingState = true;
                          goingFirebase(goingState: goingState);
                          //isButtonClickableG = false;
                          isButtonClickableR = true;
                        });
                        }
                        else{
                          setState(() {
                          isPressed1 = !isPressed1;
                          const goingState = false;
                          goingFirebase(goingState: goingState);
                        });
                        }
                      }:null,
                      child:const Text("| Going"),
                      ),
                      Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: Lottie.network(
              'https://lottie.host/a91710c2-de44-44ea-8420-9caad1b1e6e2/Qmt1ILlWoM.json',
              width: 50,
              height: 100,
              frameRate: FrameRate(500),
              fit: BoxFit.fitWidth,
              animate: isPressed1? true:false,
            ),
                  ),
                  ],
                ),
          
                //const SizedBox(height: 20),
          
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
          
          /////////////////////////////////////////////      REACHED BUTTON     ///////////////////////////////////////////////////////////////////////////////////
          
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      disabledBackgroundColor:Color.fromARGB(255, 94, 87, 86),
                      disabledForegroundColor: Colors.white,
                      padding:const EdgeInsets.all(5.0),
                      fixedSize:const Size(180, 60),
                      textStyle:isPressed2?
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold):const TextStyle(fontSize: 18,),
                        elevation: 30,
                        shadowColor: Colors.black,
                        side:isPressed2?const BorderSide(color: Colors.black, width: 3):const BorderSide(color: Colors.black, width: 2) ,
                        shape:const StadiumBorder(),
                      backgroundColor: isPressed2? const Color.fromARGB(255, 211, 27, 14): Colors.blue,
                      ),
                      
                      onPressed:isButtonClickableR? (){
                        ++reach;
                        if(reach%2==0){
                          setState(() {
                            isPressed1 = false;
                          isPressed2 = !isPressed2;
                          const reachState = true;
                          reachFirebase(goingState: true, reachState: reachState);
                          isButtonClickableG = false;
                          
                          isButtonClickableW = true;
                        });
                        }else{
                          setState(() {
                          isPressed2 = !isPressed2;
                          const reachState = false;
                          reachFirebase(goingState: true, reachState: reachState);
                        });
                        }
                        
                      }:null,
                      child:const Text("| Reached"),
                      ),
                      Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: Lottie.network(
              'https://lottie.host/ab43dc02-4c4a-4244-9ea7-bed632cc6d59/N2jzkjdrXo.json',
              width: 50,
              height: 100,
              fit: BoxFit.fitWidth,
              animate: isPressed2? true:false,
            ),
                  ),
                  ],
                ),
            
              //  const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                  
          
          /////////////////////////////////////////////      WORKING BUTTON     ///////////////////////////////////////////////////////////////////////////////////
          
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      disabledBackgroundColor:const Color.fromARGB(255, 94, 87, 86),
                      disabledForegroundColor: Colors.white,
                      padding:const EdgeInsets.all(5.0),
                      fixedSize:const Size(180, 60),
                    textStyle:isPressed3?
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold):const TextStyle(fontSize: 18,),
                        elevation: 30,
                        shadowColor: Colors.black,
                        side:isPressed3?const BorderSide(color: Colors.black, width: 3):const BorderSide(color: Colors.black, width: 2) ,
                        shape:const StadiumBorder(),
                      backgroundColor: isPressed3? const Color.fromARGB(255, 211, 27, 14): Colors.blue,
                       //overlayColor: getColor(Colors.white, Color.fromARGB(255, 170, 3, 16)), //first contain normal color then pressed color contain
                      
                      ),
                      
                      onPressed:isButtonClickableW? (){
                        ++work;
                        if(work%2==0){
                          setState(() {
                            isPressed2 = false;
                          isPressed3 = !isPressed3;
                          const workingState = true;
                          workingFirebase(goingState: true, reachState: true, workingState:workingState);
                          isButtonClickableR = false;
                          
                          isButtonClickableJ = true;
                        });
                        }else{
                          setState(() {
                          isPressed3 = !isPressed3;
                          const workingState = false;
                          workingFirebase(goingState: true, reachState: true, workingState:workingState);
                        });
          
                        }
                        
                      
                      }:null,
                      child:const Text("| Working"),
                      ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: Lottie.network(
              'https://lottie.host/de2b9ca1-d77f-4a68-a4bb-19d221fbe549/xjsbvah3XG.json',
              width: 50,
              height: 100,
              
              fit: BoxFit.fitWidth,
              animate: isPressed3? true:false,
            ),
                  ),
                  ],
                ),
            
                //const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                
          /////////////////////////////////////////////      JOB DONE BUTTON     ///////////////////////////////////////////////////////////////////////////////////
          
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                      disabledBackgroundColor:const Color.fromARGB(255, 94, 87, 86),
                      disabledForegroundColor: Colors.white,
                      padding:const EdgeInsets.all(5.0),
                      fixedSize:const Size(180, 60),
                      textStyle:isPressed4?
                        const TextStyle(fontSize: 18, fontWeight: FontWeight.bold):const TextStyle(fontSize: 18,),
                        elevation: 30,
                        shadowColor: Colors.black,
                        side:isPressed4?const BorderSide(color: Colors.black, width: 3):const BorderSide(color: Colors.black, width: 2) ,
                        shape:const StadiumBorder(),
                      backgroundColor: isPressed4? const Color.fromARGB(255, 211, 27, 14): Colors.blue,
                       //overlayColor: getColor(Colors.white, Color.fromARGB(255, 170, 3, 16)), //first contain normal color then pressed color contain
                      
                      ),
                      
                      onPressed:isButtonClickableJ? (){
                        ++jdone;
                        if(jdone%2==0){
                          setState(() {
                            isPressed3 = false;
                          isPressed4 = !isPressed4;
                          const jobdoneState = true;
                          jobdoneFirebase(goingState: true, reachState: true, workingState:true, jobdoneState: jobdoneState);
                          isButtonClickableW = false;
                          isButtonClickableReset = true;
                        });
                        }else{
                          setState(() {
                          isPressed4 = !isPressed4;
                          const jobdoneState = false;
                          jobdoneFirebase(goingState: true, reachState: true, workingState:true, jobdoneState: jobdoneState);
                        });
                        }
                        
                      
                      }:null,
                      child:const Text("| Jobdone"),
                      ),
                    Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: Lottie.network(
              'https://lottie.host/ae4127d0-9125-49da-b28a-2e2f25ea53f7/zXXYXtbEHb.json',
              width: 50,
              height: 100,
              fit: BoxFit.fitWidth,
              animate: isPressed4? true:false,
            ),
                  ),
                
                
                  ],
                ),
          
               // const SizedBox(height: 20),
          ////////////////////////////////////////////////      RESET BUTTON ///////////////////////////////////////////////////////////////////////////////////
                SingleChildScrollView(
                  padding: EdgeInsets.all(32),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(110, 0, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                      
                        padding:const EdgeInsets.all(5.0),
                        fixedSize:const Size(100, 30),
                        textStyle:
                          const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          elevation: 30,
                          shadowColor: Colors.black,
                          //side:isPressed4?const BorderSide(color: Colors.black, width: 3):const BorderSide(color: Colors.black, width: 2) ,
                      //    shape:const ,
                        backgroundColor:  Colors.blue.shade600,
                         //overlayColor: getColor(Colors.white, Color.fromARGB(255, 170, 3, 16)), //first contain normal color then pressed color contain
                        
                        ),
                          
                          onPressed:isButtonClickableReset? (){
                          
                              setState(() {
                              isButtonClickableJ = false;
                              
                              });
                              Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) =>const CustomerHomeScreen()),
                    );
                              
                              //isButtonClickableReset = false;
                        }:null, child:const Text("Reset")),
                      ),
                    ],
                  ),
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future goingFirebase({required bool goingState}) async{
    
    final docState = FirebaseFirestore.instance.collection('working_status').doc(nameController.text);

    final json = {
      'Name' : nameController.text,
      'Mobile_Number': phoneNumberController.text,
      'Location': locationController.text,
      'Going' : goingState,
      'Reached' : false,
      'Working' : false,
      'Jobdone' : false,
    };

    await docState.set(json);
  }

  Future reachFirebase({required bool reachState, required bool goingState}) async{
    
    final docState = FirebaseFirestore.instance.collection('working_status').doc(nameController.text);

    final json = {
      'Name' : nameController.text,
      'Mobile_Number': phoneNumberController.text,
      'Location': locationController.text,
      'Going' : goingState,
      'Reached' : reachState,
      'Working' : false,
      'Jobdone' : false,
    };

    await docState.set(json);
  }

  Future workingFirebase({required bool reachState, required bool goingState, required bool workingState}) async{
    
    final docState = FirebaseFirestore.instance.collection('working_status').doc(nameController.text);

    final json = {
      'Name' : nameController.text,
      'Mobile_Number': phoneNumberController.text,
      'Location': locationController.text,
      'Going' : goingState,
      'Reached' : reachState,
      'Working' : workingState,
      'Jobdone' : false,
    };

    await docState.set(json);
  }

  Future jobdoneFirebase({required bool reachState, required bool goingState, required bool workingState,required bool jobdoneState}) async{
    
    final docState = FirebaseFirestore.instance.collection('working_status').doc(nameController.text);

    final json = {
      'Name' : nameController.text,
      'Mobile_Number': phoneNumberController.text,
      'Location': locationController.text,
      'Going' : goingState,
      'Reached' : reachState,
      'Working' : workingState,
      'Jobdone' : jobdoneState,
    };

    await docState.set(json);
  }

}