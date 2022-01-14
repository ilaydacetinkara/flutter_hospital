import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/button_widget.dart';
import 'package:flutter_hospital/components/textfield_widget.dart';
import 'package:flutter_hospital/screens/profil/components/profil_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ProfileWidget(
                  image: "account.png",
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  // text: "name",
                  // onChanged:(){},
                  // text: user.name,
                  // onChanged: (name) => user = user.copy(name: name),
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  // text: user.email,
                  // onChanged: (email) => user = user.copy(email: email),
                ),
                const SizedBox(height: 24),
                ButtonWidget(
                  text: 'Save',
                  // onClicked: () {
                  //   UserPreferences.setUser(user);
                  //   Navigator.of(context).pop();
                  // },
                ),
              ],
            ),
          ),
        ));
  }
}
