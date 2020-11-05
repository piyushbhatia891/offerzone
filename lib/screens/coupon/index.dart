import 'package:flutter/material.dart';
import 'package:offer_zone/screens/home/index.dart';
import 'package:offer_zone/utils/routes.dart';

class CouponPage extends StatefulWidget {
  _CouponPageState createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, Routes.HOME);
                  },
                  color: Colors.black,
                ),
                IconButton(
                  icon: Icon(Icons.star_border),
                )
              ],
            ),
          ),
          CouponRowWidget(
            isBorderProvided: true,
          ),
          ClipRRect(
            child: Image.asset('assets/images/profile/mac.jpg'),
            borderRadius: BorderRadius.circular(10.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
              onPressed: () {},
              color: Colors.orange,
              shape: StadiumBorder(),
              splashColor: Colors.grey,
              elevation: 10.0,
              textColor: Colors.white,
              child: Center(
                  child: Text("Claim this offer",
                      style: TextStyle(fontSize: 20.0)))),
          Container(
            padding: const EdgeInsets.all(.0),
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text("Related Offers",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold))),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, int index) {
                  return CouponRowWidget(
                    isBorderProvided: true,
                  );
                }),
          ),
        ],
      ),
    ));
  }
}
