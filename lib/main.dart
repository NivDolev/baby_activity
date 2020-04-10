import 'package:baby_activity/screens/google_sign_screen.dart';
import 'package:baby_activity/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/children_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChildrenScreen.id: (context) => ChildrenScreen(),
        GoogleSignInScreen.id: (context) => GoogleSignInScreen(),
      },
    );
  }
}
