import 'package:flutter/material.dart';
import 'package:flutter_hospital/constant.dart';
import 'package:flutter_hospital/enums.dart';
import 'package:flutter_hospital/screens/home/home_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({ Key? key , required this.selectedMenu,}) : super(key: key);

    final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                 icon: Icon(
                Icons.home,
              ),
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                 icon: Icon(Icons.message),
                onPressed: () {Navigator.pushNamed(
                        context,
                        '/message',
                      );},
              ),
              IconButton(
                 icon: Icon(Icons.search),
                onPressed: () {Navigator.pushNamed(
                        context,
                        '/search',
                      );},
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                
                onPressed: () =>
                   
                    {Navigator.pushNamed(
                        context,
                        '/profil',
                      )}
              ),
            ],
          )),
    
    );
  }
}