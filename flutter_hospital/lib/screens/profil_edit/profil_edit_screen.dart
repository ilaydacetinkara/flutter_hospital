import 'package:flutter/material.dart';
import 'package:flutter_hospital/screens/profil_edit/components/body.dart';

class ProfilEditScreen extends StatefulWidget {
  const ProfilEditScreen({Key? key}) : super(key: key);

  @override
  _ProfilEditScreenState createState() => _ProfilEditScreenState();
}

class _ProfilEditScreenState extends State<ProfilEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Body(),
    );
  }
}
