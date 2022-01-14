import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/rounded_button.dart';

class Doctors extends StatelessWidget {
  final String image;
  final String name;
  final String hospital;
  final String department;

  final String text;
  const Doctors(
      {Key? key,
      required this.name,
      required this.image,
      required this.text,
      required this.hospital,
      required this.department})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1.0,
        borderRadius: BorderRadius.circular(12.0),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.blueGrey[50],
          ),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/account.png"),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          name,
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          department,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          hospital,
                          style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  width: size.width * 0.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 15),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            '/messagedetails',
                          );
                        },
                        child: Text(
                          "Message",
                          style: TextStyle(fontSize: 25.0),
                        )),
                  )),
            ],
          ),
        ),

        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: <Widget>[
        //         Container(
        //           width: 150.0,
        //           height: 150.0,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(400.0),
        //             color: Colors.indigo,
        //             image: DecorationImage(
        //                 image: AssetImage("lib/assets/images/"),
        //                 fit: BoxFit.cover),
        //           ),
        //         ),
        //         SizedBox(
        //           width: 5.0,
        //         ),
        //         Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: <Widget>[
        //             Text(
        //               name,
        //               style: TextStyle(
        //                   fontSize: 20.0,
        //                   fontWeight: FontWeight.bold,
        //                   color: Colors.black),
        //             ),
        //             //Text hastane
        //           ],
        //         )
        //       ],
        //     ),
        //     SizedBox(
        //       height: 15.0,
        //     ),
        //     Text(text,
        //         style: TextStyle(
        //           fontSize: 18.0,
        //           color: Colors.grey,
        //         )),
        //     SizedBox(
        //       height: 15.0,
        //     ),
        //     //ikon
        //   ],
        // ),
      ),
    );
  }
}
