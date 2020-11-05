import 'package:flutter/material.dart';
import 'package:offer_zone/screens/home/index.dart';
import 'package:offer_zone/screens/orders/orders.dart';
import 'package:offer_zone/utils/routes.dart';

class CartPage extends StatefulWidget{
  _CartPageState createState()=>_CartPageState();
}

class _CartPageState extends State<CartPage>{
  TextStyle boldStyle2 = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(boldStyle2: boldStyle2,appTitle: "Cart"),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                itemBuilder: (context,int index){
              return CartRowWidget(
                isBorderProvided: false,
                areChipsEnabled: false,
                isTrailingSectionEnabled: true,
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: MediaQuery.of(context).size.height*0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

                  Text("Rs.20000",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
              RaisedButton(onPressed: (){
                Navigator.popAndPushNamed(context, Routes.SUCCESS_PAGE);
              },color:Colors.orange,textColor:Colors.white,child: Center(
                child: Text("Place Order",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),shape: StadiumBorder(),)
            ],
          ),
        ),
      ),
    );
  }
}