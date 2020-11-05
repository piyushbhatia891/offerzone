import 'package:flutter/material.dart';
import 'package:offer_zone/screens/home/index.dart';

class OrdersPage extends StatefulWidget{
  _OrdersPageState createState()=>_OrdersPageState();
}
class _OrdersPageState extends State<OrdersPage>{
  TextStyle boldStyle2 = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          AppBarWidget(boldStyle2: boldStyle2,appTitle: "Orders",),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                itemBuilder: (context,int index){
              return OrderRowWidget(
                isBorderProvided: true,
              );
            }),
          ),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  final String appTitle;
  const AppBarWidget({
    Key key,
    @required this.boldStyle2,
    this.appTitle
  }) : super(key: key);

  final TextStyle boldStyle2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50.0),
      padding: const EdgeInsets.only(left: 10.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          BackButton(),

          Expanded(
              child: Text(
                appTitle,
                style: boldStyle2
              ))
        ],
      ),
    );
  }
}