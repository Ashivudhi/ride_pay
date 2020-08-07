import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'package:ride_pay/screens/driver/log_In.dart';
import 'package:ride_pay/screens/rider/log_In.dart';


class LandingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>new _State();
}

class _State extends State<LandingPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: <Widget>[
              Container(
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.fromLTRB(20, 30, 0, 70),
                child: Text(
                  'Ride Pay',
                  style: TextStyle(
                      color:  Colors.blueGrey,
                      fontWeight: FontWeight.w900,
                      fontSize: 40
                  ),
                ),
              ),
              Container(
                  height: 90,padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: RaisedButton.icon(
                    onPressed: () {
                      ///Do something here OnSlide

                     navigateToDriverLogin(context);
                    },
                    icon: Center(
                        child: Icon(
                          Icons.local_taxi,
                          color: Colors.blueGrey,
                          size: 40.0,
                        )),
                    label: Text('DRIVER',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w800,
                      fontSize: 16
                    ),),
                    hoverColor: Colors.grey,
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  )
              ),

              Container(
                  height: 90,padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    icon: Center(
                        child: Icon(
                          Icons.transfer_within_a_station,
                          color: Colors.blueGrey,
                          size: 40.0,
                        )),
                    label: Text('RIDER',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w800,
                      fontSize: 16
                    ),),
                    color: Colors.yellow,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),

              ),

            ],
          ),
        )
    );

  }
  Future navigateToDriverLogin(context) async {
    Navigator.push(context, MaterialPageRoute(builder: (context) => DriverLogin()));
  }
}