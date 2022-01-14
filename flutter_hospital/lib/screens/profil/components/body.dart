import 'package:flutter/material.dart';
import 'package:flutter_hospital/constant.dart';
import 'package:flutter_hospital/screens/profil/components/profil_widget.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProfileWidget(
                image: "account.png",
                // onClicked: () {
                //   Navigator.pushNamed(
                //     context,
                //     '/profiledit',
                //   );
                // },
              ),
              const SizedBox(height: 24),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
                            const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    " email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
                            const SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.8,
                decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29.0)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    " email",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
                            const SizedBox(height: 10),

              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 10),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/profiledit',
                          );
                        },
                        child: Text(
                          "Profil Edit",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  )),
                            const SizedBox(height: 10),

              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 10),
                        ),
                        onPressed: () {
                          //çıkış
                        },
                        child: Text(
                          "Sign Out",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
