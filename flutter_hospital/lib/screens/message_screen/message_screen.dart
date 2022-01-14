import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/message_screen/components/header.dart';
import 'package:flutter_hospital/screens/message_screen/components/list.dart';
import 'package:flutter_hospital/screens/message_screen/components/search.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);
  static String routeName = "/message";

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Search(),
            List(),
            List(),
            List(),
            List(),
            List(),
          ],
        ),
      ),
    );
  }
}
