import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewDeals extends StatefulWidget {
  const NewDeals({Key? key}) : super(key: key);

  @override
  State<NewDeals> createState() => _NewDealsState();
}

class _NewDealsState extends State<NewDeals> {
  List deals1 = [
    {
      "img":
          "https://img.etimg.com/photo/msid-94089628,quality-100/vgr-professional-hair-trimmer-kit-.jpg",
      "t1": "Best of Trimmers",
      "t2": "Extra 10% off"
    },
    {
      "img":
          "https://images.pexels.com/photos/52518/jeans-pants-blue-shop-52518.jpeg?cs=srgb&dl=pexels-pixabay-52518.jpg&fm=jpg",
      "t1": "Jeans & Jackets",
      "t2": "50-80% off"
    },
    {
      "img":
          "https://cdn2.stylecraze.com/wp-content/uploads/2013/08/16-Best-Hair-Growth-Oils-To-Buy-In-2019.jpg",
      "t1": "Hair Care",
      "t2": "Upto 50% off"
    }
  ];

  List deals2 = [
    {
      "img":
          "https://www.gizbot.com/img/2018/02/flipkart-valentine-s-day-special-discounts-on-headphones-speakers-and-more-1517999784.jpg",
      "t1": "Headsets",
      "t2": "Upto 80% off"
    },
    {
      "img":
          "https://img.freepik.com/premium-photo/colorful-educational-toys-children-white-surface_168508-309.jpg?w=2000",
      "t1": "Grooming",
      "t2": "Upto 50% off"
    },
    {
      "img":
          "https://vaya.in/wp-content/uploads/2021/02/5-Easy-To-Use-Serveware-for-Your-Kitchen.jpg",
      "t1": "Serveware Essentials",
      "t2": "Extra 10% off"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return Container(
        height: 60.h,
        child: Card(
          //elevation: 5,
          color: Colors.purple,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Container(
                  height:13.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.yellow, width: 3),
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://rukminim1.flixcart.com/fk-p-flap/1100/400/image/ea7b14f03508e3c2.jpg?q=90',
                          ),
                          fit: BoxFit.fill)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Container(
                height: height / 5.9,
                child: ListView.builder(
                    itemCount: deals1.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width / 3.3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                deals1[index]["img"],
                                height: 10.h,
                                width: 20.w,
                              ),
                              Container(
                                width: width / 3.3,
                                height: height / 19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.blue,
                                        Colors.purple,
                                      ],
                                    )),
                                child: Column(
                                  children: [
                                    Text(
                                      deals1[index]["t1"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14.sp,color: Colors.white),
                                    ),
                                    Text(deals1[index]["t2"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14.sp,color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: height / 5.9,
                child: ListView.builder(
                    itemCount: deals2.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: width / 3.3,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.yellow, width: 2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              Image.network(
                                deals2[index]["img"],
                                height: 10.h,
                                width: 20.w,
                              ),
                              Container(
                                width: width / 3.3,
                                height: height / 19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Colors.blue,
                                        Colors.purple,
                                      ],
                                    )),
                                child: Column(
                                  children: [
                                    Text(
                                      deals2[index]["t1"],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 14.sp,color: Colors.white),
                                    ),
                                    Text(deals2[index]["t2"],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 14.sp,color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
