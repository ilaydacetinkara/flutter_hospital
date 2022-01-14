import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/bottomnavbar.dart';
import 'package:flutter_hospital/enums.dart';
import 'package:flutter_hospital/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blueGrey[200],
      body: Body(
        
      ),
      bottomNavigationBar: BottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
