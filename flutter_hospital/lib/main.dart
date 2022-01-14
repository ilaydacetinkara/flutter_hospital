import 'package:flutter/material.dart';
import 'package:flutter_hospital/components/drop_down_button.dart';
import 'package:flutter_hospital/screens/doctor_signup/doctor_signup.dart';
import 'package:flutter_hospital/screens/home/home_screen.dart';
import 'package:flutter_hospital/screens/login/login.dart';
import 'package:flutter_hospital/screens/message_details/message_details.dart';
import 'package:flutter_hospital/screens/message_screen/message_screen.dart';
import 'package:flutter_hospital/screens/profil_edit/profil_edit_screen.dart';
import 'package:flutter_hospital/screens/profil/profil_screen.dart';
import 'package:flutter_hospital/screens/search/search_screen.dart';
import 'package:flutter_hospital/screens/signup/signup.dart';
import 'package:flutter_hospital/splash.dart';

// Widget _defaultHome = const LoginScreen();
void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // // Get result of the login function.
  // bool _result = await SharedService.isLoggedIn();
  // if (_result) {
  //   _defaultHome = const HomePage();
  // }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        routes: {
          //  '/': (context) => _defaultHome,
          '/home': (context) => const HomeScreen(),
          '/login': (context) => const Login(),
          '/register': (context) => const SignUp(),
          '/doctorregister': (context) => const DoctorSignUp(),
          '/splash': (context) => const Splash(),
          '/message': (context) => const MessageScreen(),
          '/messagedetails': (context) => const MessageDetails(),
          '/profil': (context) => const ProfilScreen(),
          '/profiledit': (context) => const ProfilEditScreen(),
          '/search': (context) => const SearchScreen(),
        },
        home: Login());
  }
}
