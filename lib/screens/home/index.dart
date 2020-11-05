import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:offer_zone/utils/constants.dart';
import 'package:offer_zone/utils/routes.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle boldStyle1 = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold);
  TextStyle boldStyle2 = TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);
  double iconSize = 14.0;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Piyush Bhatia",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                        CircleImageWidget(
                            borderColor: Colors.white,
                            borderSize: 35.0,
                            imageSize: 30.0,
                            imageUrl: 'assets/images/profile/my.jpg')
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.home, color: Colors.orange),
                title: Text("Home"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                  size: iconSize,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.COUPONS_LIST);
                },
                leading: Icon(
                  Icons.local_offer,
                  color: Colors.orange,
                ),
                title: Text("Offers"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                  size: iconSize,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.CART_PAGE);
                },
                leading: Icon(
                  Icons.shopping_bag,
                  color: Colors.orange,
                ),
                title: Text("Cart"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                  size: iconSize,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.ORDERS_PAGE);
                },
                leading: Icon(
                  Icons.settings,
                  color: Colors.orange,
                ),
                title: Text("Orders"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                  size: iconSize,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.orange,
                ),
                title: Text("Settings"),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.orange,
                  size: iconSize,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("Version Name")),
              ))
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(0.0),
              margin: const EdgeInsets.only(left: 20.0,top:10.0,bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                        IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              _scaffoldKey.currentState.openDrawer();
                            }),
                        Expanded(flex:2,child: Text(Constants.APP_NAME, style: boldStyle1)),
                   
                  CircleImageWidget(imageUrl: 'assets/images/profile/my.jpg')
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20.0),
                  itemCount: 5,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          margin:
                              const EdgeInsets.only(right: 10.0, bottom: 10.0),
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Coupons For Daily grossing",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              Text("Click here",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.0))
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 100.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            margin: const EdgeInsets.only(
                                right: 10.0, bottom: 10.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(200.0)),
                          ),
                        )
                      ],
                    );
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Coupons For Daily grossing",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                          Text("Click here",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0))
                        ],
                      ),
                    );
                  }),
            ),
            Container(
              padding: const EdgeInsets.only(left:20.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text("Recommended For You", style: boldStyle2)),
                  Text("View All"),
                  IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: iconSize,
                      ),
                      onPressed: null)
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20.0),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, int index) {
                    return CouponRowWidget(
                      isBorderProvided: true,
                    );
                  }),
            )
          ]),
        ));
  }
}

class CircleImageWidget extends StatelessWidget {
  final String imageUrl;
  final Color borderColor;
  final double borderSize, imageSize;
  const CircleImageWidget(
      {Key key,
      this.imageUrl,
      this.borderColor = Colors.orange,
      this.borderSize = 23.0,
      this.imageSize = 20.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: borderSize,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: imageSize,
        backgroundImage: AssetImage(imageUrl),
      ),
    );
  }
}

class OrderRowWidget extends StatelessWidget {
  final bool isBorderProvided;
  final bool areChipsEnabled;
  final bool isTrailingSectionEnabled;

  const OrderRowWidget({Key key,
    this.isTrailingSectionEnabled = false,
    this.isBorderProvided=false,
    this.areChipsEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: () {
        Navigator.popAndPushNamed(context, Routes.COUPON_DETAILS);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                width: 2.0,
                color: isBorderProvided
                    ? Colors.grey.shade200
                    : Colors.transparent)),
        child: Row(
          children: [
            Expanded(
                child: CircleImageWidget(
                    imageUrl: 'assets/images/brands/mac.jpg')),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: isTrailingSectionEnabled ? 2 : 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10-40% OFF",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  Text("Flat Discount on every purchase. thanks",
                      style: TextStyle(
                          fontSize: 14.0, color: Colors.grey.shade600))
                ],
              ),
            ),Column(
              children: [
                Text("Ready To deliver",style:TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)),
                OutlineButton(onPressed: (){

                },color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  borderSide: BorderSide(
                  width: 2.0,color: Colors.grey.shade400
                ),child: Text("Track Order"),textColor: Colors.black,)
              ],
            )
          ],
        ),
      ),
    );
  }
}


class CartRowWidget extends StatelessWidget {
  final bool isBorderProvided;
  final bool areChipsEnabled;
  final bool isTrailingSectionEnabled;

  const CartRowWidget({Key key,
    this.isTrailingSectionEnabled = false,
    this.isBorderProvided=false,
    this.areChipsEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: () {
        Navigator.popAndPushNamed(context, Routes.COUPON_DETAILS);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                width: 2.0,
                color: isBorderProvided
                    ? Colors.grey.shade200
                    : Colors.transparent)),
        child: Row(
          children: [
            Expanded(
                child: CircleImageWidget(
                    imageUrl: 'assets/images/brands/mac.jpg')),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: isTrailingSectionEnabled ? 2 : 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10-40% OFF",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  Text("Flat Discount on every purchase. thanks",
                      style: TextStyle(
                          fontSize: 14.0, color: Colors.grey.shade600)),
                  areChipsEnabled
                      ? _buildChipRowWidget(context)
                      : _buildPriceRowWidget(context),
                ],
              ),
            ),
            isTrailingSectionEnabled
                ? Column(
              children: [
                Text("Quantity : 2"),
                Chip(label: Text("Remove"),
                  deleteIconColor: Colors.grey.shade400,
                  onDeleted: (){},
                  labelStyle: TextStyle(color: Colors.black) ,
                  deleteIcon: Icon(Icons.delete),
                  backgroundColor: Colors.grey.shade200,)
              ],
            )
                : Container()
          ],
        ),
      ),
    );
  }
}

  class CouponRowWidget extends StatelessWidget {
  final bool isBorderProvided;
  final bool areChipsEnabled;
  final bool isTrailingSectionEnabled;
  const CouponRowWidget(
      {Key key,
      this.isTrailingSectionEnabled = false,
      this.isBorderProvided,
      this.areChipsEnabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: () {
        Navigator.popAndPushNamed(context, Routes.COUPON_DETAILS);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 10.0),
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
                width: 2.0,
                color: isBorderProvided
                    ? Colors.grey.shade200
                    : Colors.transparent)),
        child: Row(
          children: [

            Expanded(
                child: CircleImageWidget(
                    imageUrl: 'assets/images/brands/mac.jpg')),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              flex: isTrailingSectionEnabled ? 2 : 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("10-40% OFF",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                  Text("Flat Discount on every purchase. thanks",
                      style: TextStyle(
                          fontSize: 14.0, color: Colors.grey.shade600)),
                  areChipsEnabled
                      ? _buildChipRowWidget(context)
                      : _buildPriceRowWidget(context),
                ],
              ),
            ),
            isTrailingSectionEnabled
                ? AddButtonWidget()
                : Container()
          ],
        ),
      ),
    );
  }


}

Row _buildChipRowWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Chip(
        label: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text("4.5", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        backgroundColor: fromHex('#FFF9E5'),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
      ),
      Chip(
        label: Text("Food",
            style: TextStyle(
                color: Colors.lightBlueAccent, fontWeight: FontWeight.bold)),
        backgroundColor: fromHex('#E5F1FC'),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.05,
      ),
      Chip(
        label: Text("12 Days",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
        backgroundColor: fromHex('#FAE8EC'),
      )
    ],
  );
}

Row _buildPriceRowWidget(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text("Rs.450",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
      SizedBox(width: 10.0,),
      Text("470",
          style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
              fontWeight: FontWeight.bold))
    ],
  );
}

Color fromHex(String hexString) {
final buffer = StringBuffer();
if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
buffer.write(hexString.replaceFirst('#', ''));
return Color(int.parse(buffer.toString(), radix: 16));
}

class AddButtonWidget extends StatelessWidget {
  const AddButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
        onPressed: () {},
        splashColor: Colors.grey,
        shape: StadiumBorder(),
        color: Colors.green,
        label: Text("ADD",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12.0)),
        textColor: Colors.white,
        icon: Icon(
          Icons.add,
          size: 16.0,
          color: Colors.white,
        ),
      );
  }
}
