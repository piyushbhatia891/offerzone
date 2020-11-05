import 'dart:async';

import 'package:flutter/material.dart';
import 'package:offer_zone/utils/constants.dart';
import 'package:offer_zone/utils/routes.dart';

class SplashPage extends StatefulWidget{
  _SplashPageState createState()=>_SplashPageState();
}
class _SplashPageState extends State<SplashPage>{
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.popAndPushNamed(context, Routes.LOGIN);
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Constants.APP_NAME,style: TextStyle(
              color: Colors.orange,
              fontSize: 18.0
            ),)
          ],
        ),
      ),
    );
  }
}