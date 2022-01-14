import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/home/components/welcome.dart';

import 'doctors.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Welcome(),
              Doctors(
                image: "account.png",
                name: "Dr. ",
                text: "aaa",
                hospital: "Hastane",
                department: "Nöroloji",
              ),
              SizedBox(
                height: 10.0,
              ),
              Doctors(
                  name: "Dr.",
                  image: "account.png",
                  text: "text",
                  hospital: "Hastane",
                  department: "Kardiyoloji")
            ],
          ),
        ),
      ),
    );
  }
}
