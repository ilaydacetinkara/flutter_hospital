import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/already_have_an_account_acheck.dart';
import 'package:flutter_hospital/components/rounded_button.dart';
import 'package:flutter_hospital/components/rounded_input_field.dart';
import 'package:flutter_hospital/components/rounded_password_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xFF01579B), Color(0xFFF81D4FA)],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Container(
        width: double.infinity,
        height: size.height,
        padding: EdgeInsets.only(top: 70, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 40.0,
                    foreground: Paint()..shader = linearGradient),
              ),
              SizedBox(height: size.height * 0.03),
              // SvgPicture.asset(
              //   "assets/icons/hospital_medical_icon.svg",
              //   height: size.height * 0.35,
              // ),
              SizedBox(height: size.height * 0.03),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 120, vertical: 10),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/home',
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 30.0),
                        )),
                  )),

              InkWell(
                child: Text(
                  "Don't have an Account? Sign Up",
                  style: TextStyle(fontSize: 15.0),
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/splash',
                  );
                },
              )

              // AlreadyHaveAnAccountCheck(
              //   press: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) {
              //           return Container();
              //         },
              //       ),
              //     );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
