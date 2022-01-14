import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/notification.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
          child: Container(
            height: 40.0,
            width: double.infinity,
            child: Row(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 200.0,
                ),
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          children: <Widget>[
                            notification("Dr.x mesaj", "3 dk önce"),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(Icons.notifications),
                  iconSize: 30.0,
                  color: Colors.red,
                )
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blueGrey[200],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Container(
            height: 40.0,
            width: double.infinity,
            child: Text(
              "Find Your Doctor Here",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.teal,
                fontWeight: FontWeight.bold,
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.blueGrey[200],
            ),
          ),
        ),
      ],
    );
  }
}
