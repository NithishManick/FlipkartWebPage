import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Essentials extends StatefulWidget {
  const Essentials({Key? key}) : super(key: key);

  @override
  State<Essentials> createState() => _EssentialsState();
}

class _EssentialsState extends State<Essentials> {
  List ess = [
    {
      "img": "https://cdn.mos.cms.futurecdn.net/iCmmEKQHQgTfJr8KBaSthe.jpg",
      "t1": "Speakers",
      "t2": "Top Sellers"
    },
    {
      "img":
          "https://img.freepik.com/free-vector/helicopter-cartoon-vector-icon-illustration-air-transportation-icon-concept-isolated-vector-flat-cartoon-style_138676-2511.jpg?w=2000",
      "t1": "Toys And Games",
      "t2": "Specials"
    },
    {
      "img": "https://cdn1.smartprix.com/rx-i4OMYIfW4-w1200-h1200/4OMYIfW4.jpg",
      "t1": "Projectors",
      "t2": "Don't Miss"
    },
    {
      "img":
          "https://images-eu.ssl-images-amazon.com/images/I/81TjRLHaz1L._AC_UL600_SR600,400_.jpg",
      "t1": "Monitors",
      "t2": "Grab Now"
    }
  ];

  double ht = 0;
  double wt = 0;

  late double cs;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    if (sw < 600) {
      ht = 12.h;
      wt = 20.w;
    } else {
      ht = 18.h;
      wt = 30.w;
    }

    if (sw < 350) {
      cs = 1.1;
    } else {
      cs = 1.4;
    }

    return Container(
      height: 90.h,
      padding: EdgeInsets.all(5),
      color: Colors.pink.shade50,
      child: Column(
        children: [
          ListTile(
            title: Text("Unlimited Entertainment"),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: Colors.blue,
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 3,
            childAspectRatio: cs,
            shrinkWrap: true,
            children: List.generate(ess.length, (index) {
              return Container(
                height: 35.h,
                padding: EdgeInsets.all(3),
                child: Card(
                  elevation: 5,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 1.3.h,
                      ),
                      Image.network(
                        ess[index]["img"],
                        height: ht,
                        width: wt,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 15),
                        child: Text(
                          ess[index]["t1"],
                          style: TextStyle(fontSize: 16.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          ess[index]["t2"],
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
