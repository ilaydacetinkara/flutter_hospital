import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/doctor_signup/components/body.dart';

class DoctorSignUp extends StatelessWidget {
  const DoctorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Body(),
    );
  }
}
