import 'package:flutter/material.dart';
import 'package:offer_zone/screens/home/index.dart';
import 'package:offer_zone/screens/orders/orders.dart';
import 'package:offer_zone/utils/constants.dart';

class OffersPage extends StatefulWidget {
  _OffersPageState createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  TextStyle boldStyle2 = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  bool isCartEnabled = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarWidget(boldStyle2: boldStyle2,appTitle: "Offers"),
          Expanded(child: ListView.builder(itemBuilder: (context, int index) {
            return CouponRowWidget(
              isBorderProvided: false,
              areChipsEnabled: false,
              isTrailingSectionEnabled: true,
            );
          }))
        ],
      ),
    );
  }
}
