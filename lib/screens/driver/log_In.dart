import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:ride_pay/screens/driver/register.dart';

class DriverLogin extends StatefulWidget {
  @override
  DriverLoginState createState() => DriverLoginState();
}

class DriverLoginState extends State<DriverLogin> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final formKey = new GlobalKey<FormState>();

  String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  "Welcome back!",
                  style: TextStyle(fontSize: 22, color: Colors.blueGrey,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "login to start using ride pay",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,),
              ),
              Padding(padding: EdgeInsets.fromLTRB( 25.0, 20.0, 25.0,10.0),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey,
                      fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                      labelText: "PHONE NUMBER",
                      prefixIcon: Container(
                          width: 50),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Colors.blueGrey, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 20.0),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey,

                      fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      prefixIcon: Container(
                          width: 50),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 20.0,25.0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: RaisedButton(
                    onPressed: _onLoginClick,
                    child: Text(
                      "Log In",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: RichText(
                  text: TextSpan(
                      text: "New Rider? ",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 16,
                          fontWeight:FontWeight.w700 ),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()));
                              },
                            text: "Sign up for a new account",
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 16))
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromWindowPadding(WindowPadding.zero, 1),
                child: RichText(text: TextSpan(
                    text: "Forgot your Password?",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 16,
                        fontWeight:FontWeight.w700 ),
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>
                                      DriverLogin()));
                            }
                      )
                    ]
                )),
              )
            ],
          )),
    );
  }
  Future<void>_onLoginClick()async{
    return Text('money');
}
}