import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OfferZone extends StatefulWidget {
  const OfferZone({Key? key}) : super(key: key);

  @override
  State<OfferZone> createState() => _OfferZoneState();
}

class _OfferZoneState extends State<OfferZone> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          titleSpacing: 0,
          toolbarHeight: 40,
          title: Text(
            "Offer Zone",
            style: TextStyle(fontSize: 16.sp),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 15,
            ),
            SizedBox(
              width: width / 20,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              size: 15,
            ),
            SizedBox(
              width: width / 20,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ))
          ]),
      body: ListView(
        shrinkWrap: true,
        children: [
          Image.network(
            "https://www.smartprix.com/bytes/wp-content/uploads/2022/09/fk-bbd-sale.jpg",
            height: 25.h,
            width: sw,
            fit: BoxFit.fill,
          ),
          Container(
            height: 45.h,
            width: sw,
            padding: EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue,
                  Colors.purple,
                ],
              ),
            ),
            child: Column(children: [
              Text(
                "LOOT",
                style: TextStyle(
                    color: Colors.yellow.shade500,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "BAZAAR",
                style: TextStyle(
                    color: Colors.yellow.shade500,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                height: 4.h,
                width: 80.w,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pinkAccent,
                ),
                padding: EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.stars_outlined,
                      color: Colors.brown,
                      size: 13,
                    ),
                    Text(
                      "1 Deal Every Hour 12 PM - 10PM",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                    Icon(
                      Icons.stars_outlined,
                      color: Colors.brown,
                      size: 13,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                height: 20.h,
                width: 90.w,
                color: Colors.pink.shade50,
                child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(
                          "https://5.imimg.com/data5/SELLER/Default/2020/11/GA/ND/GQ/6468968/new-product-500x500.jpeg"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Classic Phone Covers",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20.sp),
                          ),
                          Text(
                            "Solid, GlassBack",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.sp),
                          ),
                          Text(
                            "Flat 179",
                            style:
                                TextStyle(color: Colors.black, fontSize: 18.sp),
                          ),
                        ],
                      )
                    ]),
              ),
              Divider(
                color: Colors.white,
              ),
              Container(
                height: 4.h,
                width: 38.w,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {},
                    child: Row(children: [
                      Text(
                        "Upcoming deals",
                        style: TextStyle(color: Colors.black,fontSize: 14.sp),
                      ),
                     //SizedBox(width: 2.3.w,),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black,
                      ),
                    ])),
              )
            ]),
          )
        ],
      ),
    );
  }
}
