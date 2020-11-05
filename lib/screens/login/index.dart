import 'package:flutter/material.dart';
import 'package:offer_zone/utils/constants.dart';
import 'package:offer_zone/utils/routes.dart';

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Constants.APP_NAME,
                style: TextStyle(color: Colors.orange, fontSize: 18.0),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, Routes.HOME);
                },
                child: Center(
                  child: Text(
                    "Sign In With Google",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
                color: Colors.orange,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
