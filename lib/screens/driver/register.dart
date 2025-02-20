import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:ride_pay/screens/driver/log_In.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
//  AuthBloc authBloc = new AuthBloc();
  var authBloc;

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  @override
  void dispose() {
    authBloc.dispose();
    super.dispose();
  }

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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 6),
                child: Text(
                  "Welcome Driver!",
                  style: TextStyle(fontSize: 22, color: Colors.blueGrey,fontWeight: FontWeight.w700),
                ),
              ),
              Text(
                "Enter your details to Quickly Signup",
                style: TextStyle(fontSize: 16, color: Colors.blueGrey,fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: StreamBuilder(
                    stream: authBloc,
                    builder: (context, snapshot) => TextField(
                      controller: _nameController,
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey,fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          errorText:
                          snapshot.hasError ? snapshot.error : null,
                          labelText: "Name",
                          prefixIcon: Container(
                              width: 50),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.yellow, width: 2),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))),
                    )),
              ),
              StreamBuilder(
                  stream: authBloc,
                  builder: (context, snapshot) => TextField(
                    controller: _phoneController,
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey,fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                        labelText: "Phone Number",
                        errorText:
                        snapshot.hasError ? snapshot.error : null,
                        prefixIcon: Container(
                            width: 50),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffCED0D2), width: 1),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)))),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: StreamBuilder(
                    stream: authBloc,
                    builder: (context, snapshot) => TextField(
                      controller: _emailController,
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey,fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          labelText: "Email",
                          errorText:
                          snapshot.hasError ? snapshot.error : null,
                          prefixIcon: Container(
                              width: 50),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xffCED0D2), width: 1),
                              borderRadius:
                              BorderRadius.all(Radius.circular(20)))),
                    )),
              ),
              StreamBuilder(
                  stream: authBloc,
                  builder: (context, snapshot) => TextField(
                    controller: _passController,
                    obscureText: true,
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey,fontWeight: FontWeight.w700),
                    decoration: InputDecoration(
                        errorText:
                        snapshot.hasError ? snapshot.error : null,
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xffCED0D2), width: 1),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)))),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: RaisedButton(
                    onPressed: _onSignUpClicked,
                    child: Text(
                      "CREATE",
                      style: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w700, fontSize: 18),
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
                      text: "Already a User? ",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => DriverLogin()));
                              },
                            text: "Login now",
                            style: TextStyle(
                                color: Color(0xff3277D8), fontSize: 16))
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _onSignUpClicked() {
//    var isValid = authBloc.isValid(_nameController.text, _emailController.text,
//        _passController.text, _phoneController.text);
//    if (isValid) {
//      // create user
//      // loading dialog
//      LoadingDialog.showLoadingDialog(context, 'Loading...');
//      authBloc.signUp(_emailController.text, _passController.text,
//          _phoneController.text, _nameController.text, () {
//            LoadingDialog.hideLoadingDialog(context);
//            Navigator.push(
//                context, MaterialPageRoute(builder: (context) => HomePage()));
//          }, (msg) {
//            LoadingDialog.hideLoadingDialog(context);
//            MsgDialog.showMsgDialog(context, "Sign-In", msg);
//            // show msg dialog
//          });
//    }
  }
}