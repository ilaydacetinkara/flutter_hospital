import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/signup/components/body.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey[200], body: Body());
  }
}
