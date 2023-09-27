import 'package:flutter/material.dart';
import 'package:light_link/Screen/signin_screen.dart';
import 'package:light_link/map/mapsample.dart';
import '../utils/colours.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);
  // final String email;
  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();

}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  String? selectedValue;
  bool _isDisabled1 = false;
  bool _isDisabled2 = false;
  bool _isDisabled3 = false;
  bool _isDisabled4 = false;


  void _logout() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignInScreen()),
    );
  }

  void _viewProfile() {
    setState(() {
      //  selectedValue = widget.email;
    });
  }

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
          title: Text("Home Screen"),
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
            SizedBox(width: 5),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: _logout,
            ),
          ],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ElevatedButton.icon(
                icon: Icon(Icons.location_on_outlined),
                label: Text("| Location",
                  style: TextStyle(
                      fontSize: 18
                  ),),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MapSample()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20.0),
                  fixedSize: Size(180, 60),
                  textStyle:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  elevation: 30,
                  shadowColor: Colors.black,
                  side: BorderSide(color: Colors.black, width: 2),
                  shape: StadiumBorder(),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton.icon(
                    icon: Icon(Icons.document_scanner_outlined),
                    label: Text("| Going",
                      style: TextStyle(
                          fontSize: 18
                      ),),
                    onPressed: (){
                      _isDisabled1 = true;
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      fixedSize: Size(180, 60),
                      textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      elevation: 30,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),

                  Switch(
                      value: _isDisabled1,
                      onChanged: (value) {
                        setState(() {
                          _isDisabled1 = value;
                        });
                      }),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton.icon(
                    icon: Icon(Icons.document_scanner_outlined),
                    label: Text("| Reached",
                      style: TextStyle(
                          fontSize: 18
                      ),),
                    onPressed: (){
                      _isDisabled2 = true;
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      fixedSize: Size(180, 60),
                      textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      elevation: 30,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),

                  Switch(
                      value: _isDisabled2,
                      onChanged: (value) {
                        setState(() {
                          _isDisabled2 = value;
                        });
                      }),
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton.icon(
                    icon: Icon(Icons.document_scanner_outlined),
                    label: Text("| Working",
                      style: TextStyle(
                          fontSize: 18
                      ),),
                    onPressed: (){
                      _isDisabled3 = true;
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      fixedSize: Size(180, 60),
                      textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      elevation: 30,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),

                  Switch(
                      value: _isDisabled3,
                      onChanged: (value) {
                        setState(() {
                          _isDisabled3 = value;
                        });
                      }),
                ],
              ),

              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton.icon(
                    icon: Icon(Icons.document_scanner_outlined),
                    label: Text("| Job Done",
                      style: TextStyle(
                          fontSize: 18
                      ),),
                    onPressed: (){
                      _isDisabled4 = true;
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      fixedSize: Size(180, 60),
                      textStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      elevation: 30,
                      shadowColor: Colors.black,
                      side: BorderSide(color: Colors.black, width: 2),
                      shape: StadiumBorder(),
                    ),
                  ),

                  Switch(
                      value: _isDisabled4,
                      onChanged: (value) {
                        setState(() {
                          _isDisabled4 = value;
                        });
                      }),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}