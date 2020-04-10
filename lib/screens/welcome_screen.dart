import 'package:baby_activity/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:baby_activity/components/rounded_button.dart';
import 'package:baby_activity/screens/registration_screen.dart';
import 'package:baby_activity/screens/google_sign_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome',
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RoundedButton(
                colour: Colors.lightBlue,
                title: 'Register',
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
              RoundedButton(
                colour: Colors.lightBlue,
                title: 'Log In',
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                colour: Colors.lightBlue,
                title: 'Google',
                onPressed: () {
                  Navigator.pushNamed(context, GoogleSignInScreen.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
