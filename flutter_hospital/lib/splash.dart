import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/rounded_button.dart';
import 'package:flutter_hospital/screens/signup/signup.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 250.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.teal),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.teal)))),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/doctorregister',
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Doctor Register",
                          style: TextStyle(fontSize: 27)),
                    )),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                child: ElevatedButton(
                  
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.teal),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(color: Colors.teal)))),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/register',
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                          Text("User Register", style: TextStyle(fontSize: 30)),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
