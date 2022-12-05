import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Sponsored extends StatelessWidget {
  Sponsored({Key? key}) : super(key: key);

  List sponsor = [
    {
      "img":
          "https://rukminim1.flixcart.com/image/416/416/kd7pevk0/physical-gift-voucher/h/g/e/1-open-flipkart-2000-original-imafu5nyxbvqyhts.jpeg?q=70",
      "t1": "Get at Various Price ",
      "t2": "Buy Now","color":Colors.pinkAccent
    },
    {
      "img":
          "https://d2j6dbq0eux0bg.cloudfront.net/images/15283280/965753310.jpg",
      "t1": "Get Instant Delivery",
      "t2": "Buy Now","color":Colors.blue
    },
    {
      "img":
          "https://i0.wp.com/www.smartprix.com/bytes/wp-content/uploads/2022/09/bestsellers.jpg?ssl=1",
      "t1": "50% off* on Top Brands",
      "t2": "Buy Now","color":Colors.tealAccent
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return
      // Card(
      //   elevation: 2,
      //   child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Sponsored",
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: height / 4.5,
              child: ListView.builder(
                  itemCount: sponsor.length,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: width / 3,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          //side: BorderSide(color: Colors.yellow, width: 2),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(width: width/3.1,
                              padding: EdgeInsets.all(7),
                              color: sponsor[index]["color"],
                              child: Image.network(
                                sponsor[index]["img"],
                                height: 10.h,
                                width: 20.w,
                              ),
                            ),
                            Padding(padding:EdgeInsets.only(left: 8.0,top: 3),
                            child: Text(
                              sponsor[index]["t1"],

                              style: TextStyle(fontSize: 14.sp),
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0,top: 3),
                              child: Text(sponsor[index]["t2"],

                                  style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        //     ),
                        //   ],
                        // ),
                      ),
                    );
                  }),
            )
          ],
        //),

    );
  }
}
