import 'package:flutter/material.dart';

class DriverLogin extends StatefulWidget {
  @override
  DriverLoginState createState() => DriverLoginState();
}

class DriverLoginState extends State<DriverLogin> {
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
              Padding(padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(hintText: "Enter your Number"),
                  onChanged: (val) {
                    setState(() {
                      this.phoneNumber = val;
                    });
                  },
                ),),
              Padding(padding: EdgeInsets.only(left: 25.0, right: 25.0),
                  child: RaisedButton(
                    child: Center(
                      child: Text('LOGIN'),
                    ),
                    onPressed: () {
                      verifyNumber(phoneNumber);
                    },
                  ))
            ],
          )),
    );
  }
  Future<void>verifyNumber(phoneNumber)async{
    return Text('money');
}
}