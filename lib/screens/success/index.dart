import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:offer_zone/utils/routes.dart';

class SuccessPage extends StatefulWidget{
  _SuccessPageState createState()=>_SuccessPageState();
}
class _SuccessPageState extends State<SuccessPage> with TickerProviderStateMixin{

  AnimationController sparkleAnimationController;
  Animation sparklesAnimation;
  final duration = new Duration(milliseconds: 1000);
  double _sparklesAngle = 0.0;
  Random random;
  Timer timer;
  int count=5;
  initState(){
    super.initState();
    random = new Random();
    sparkleAnimationController = new AnimationController(vsync: this, duration: duration);
    sparklesAnimation = new CurvedAnimation(parent: sparkleAnimationController, curve: Curves.easeIn);
    sparklesAnimation.addListener((){
      setState(() { });
    });
    timer =Timer.periodic(duration, (t){
      if(count==0)
        timer.cancel();
      else {
        sparkleAnimationController.forward(from: 0.0);
        setState(() {
          _sparklesAngle = random.nextDouble() * (2 * pi);
          count=count-1;
        });
      }
    });
  }

  dispose(){
    super.dispose();
    sparkleAnimationController.dispose();
    timer.cancel();
  }

  Widget getScore(){
    var stackChildren = <Widget>[
    ];

    var firstAngle = _sparklesAngle;
    var sparkleRadius = (sparkleAnimationController.value * 50) ;
    var sparklesOpacity = (1 - sparklesAnimation.value);

    for(int i = 0;i < 20; ++i) {
      var currentAngle = (firstAngle + ((2*pi)/5)*(i));
      var sparklesWidget =
      new Positioned(child: new Transform.rotate(
          angle: currentAngle - pi/2,
          child: new Opacity(opacity: sparklesOpacity,
              child : new Image.asset("assets/images/profile/sparkles.png", width: 14.0, height: 14.0, ))
      ),
        left:(sparkleRadius*cos(currentAngle)) + 90,
        top: (sparkleRadius* sin(currentAngle)) + 30 ,
      );
      stackChildren.add(sparklesWidget);
    }
    
    stackChildren.add(new Container(
        height: MediaQuery.of(context).size.height*0.1,
        width: MediaQuery.of(context).size.width*0.5,
        decoration: new ShapeDecoration(
          shape: new CircleBorder(
              side: BorderSide.none
          ),
          color: Colors.orange,
        ),
        child: new Center(child:
            Icon(Icons.check,color: Colors.white,)
        )
    ));

    var widget =  new Positioned(
        child: new Stack(
          alignment: FractionalOffset.center,
          overflow: Overflow.visible,
          children: stackChildren,
        )
    );
    return widget;
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.5,
              child: Stack(
                alignment: FractionalOffset.center,
                overflow: Overflow.visible,
                children: <Widget>[
                  getScore()
                ],
              )
            ),
            SizedBox(
              height: 30.0,
            ),
            Text("Congratulations",style: TextStyle(color: Colors.white,fontSize: 30.0)),
            Text("Your Request is sent to the owner",style: TextStyle(color: Colors.white)),
            SizedBox(
              height: 30.0,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.grey.shade400),
              ),
              splashColor:Colors.yellow[200],
              onPressed: (){
                Navigator.popAndPushNamed(context, Routes.HOME);
              },
              color: Colors.white,
              textColor: Colors.orange,
              child: Text("Home Page"),
              elevation: 10.0
            )
          ],
        ),
      ),
      backgroundColor: Colors.orange.shade400,
    );
  }
}