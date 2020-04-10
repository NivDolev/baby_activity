import 'package:baby_activity/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'children_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Registration Page',
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
            title: 'Register',
            colour: Colors.lightBlue,
            onPressed: () async {
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email.trim(), password: password);
                print(newUser);
                if (newUser != null) {
                  Navigator.pushNamed(context, ChildrenScreen.id);
                } else {
                  // display error message
                  print('could not create user');
                }
              } catch (e) {
                print('error: $e');
              }
            },
          )
        ],
      ),
    );
  }
}
