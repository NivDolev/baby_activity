import 'package:baby_activity/screens/children_screen.dart';
import 'package:flutter/material.dart';
import 'package:baby_activity/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Log In Page',
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              email = newValue;
            },
          ),
          TextField(
            obscureText: true,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              password = newValue;
            },
          ),
          RoundedButton(
            title: 'Log In',
            colour: Colors.lightBlue,
            onPressed: () async {
              try {
                final newUser = await _auth.signInWithEmailAndPassword(
                    email: email.trim(), password: password);
                if (newUser != null) {
                  Navigator.pushNamed(context, ChildrenScreen.id);
                }
              } catch (e) {
                print('Error: $e');
              }
            },
          )
        ],
      ),
    );
  }
}
