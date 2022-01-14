import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/home/components/doctors.dart';
import 'package:flutter_hospital/screens/message_screen/components/search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);
   static String routeName = "/search";

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.blueGrey[200],
      body: 
        SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Column(
            children: [
              Search(),
              SizedBox(
                height: 10.0,
              ),
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
                  department: "Kardiyoloji"),
                  SizedBox(
                height: 10.0,
              ),
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
