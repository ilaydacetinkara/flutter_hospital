import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/rounded_button.dart';
import 'package:flutter_hospital/components/rounded_input_field.dart';
import 'package:flutter_hospital/components/rounded_password_field.dart';
import 'package:flutter_hospital/screens/signup/components/or_divider.dart';
import 'package:flutter_hospital/screens/signup/components/social_icon.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF01579B), Color(0xFFF81D4FA)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      padding: EdgeInsets.only(top: 100, bottom: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(
                  fontSize: 40.0, foreground: Paint()..shader = linearGradient),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        padding:
                            EdgeInsets.symmetric(horizontal: 120, vertical: 10),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/home',
                        );
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(fontSize: 27.0),
                      )),
                )),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
