import 'dart:ui';

import 'package:ride_pay/screens/landing_Page.dart';
import 'package:ride_pay/screens/rider/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
//              SizedBox(
//                height: 140,
//              ),
//              Image.asset('ic_car_green.png'),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 18, color: Colors.blueGrey,
                      fontWeight: FontWeight.w700),
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Container(
                          width: 50),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                  keyboardType: TextInputType.phone,
                ),
              ),
              TextField(
                controller: _passController,
                style: TextStyle(fontSize: 18, color: Colors.blueGrey,
                fontWeight: FontWeight.w700),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Container(
                        width: 50),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(20)))),

              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
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
                                        builder: (context) => LoginPage()));
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
                          LoginPage()));
                          }
                    )
                  ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLoginClick() {
    String email = _emailController.text;
    String pass = _passController.text;
//    var authBloc = MyApp.of(context).authBloc;
//    LoadingDialog.showLoadingDialog(context, "Loading...");
//    authBloc.signIn(email, pass, () {
//      LoadingDialog.hideLoadingDialog(context);
//      Navigator.of(context)
//          .push(MaterialPageRoute(builder: (context) => HomePage()));
//    }, (msg) {
//      LoadingDialog.hideLoadingDialog(context);
//      MsgDialog.showMsgDialog(context, "Sign-In", msg);
//    });
  }
}