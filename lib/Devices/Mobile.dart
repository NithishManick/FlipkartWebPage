import 'package:flipkartweb/Widgets/Essentials.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Widgets/AppBarMTL.dart';
import '../Widgets/DrawerMT.dart';
import '../Widgets/ImageSlide.dart';
import '../Widgets/MenuList.dart';
import '../Widgets/NewDeals.dart';
import '../Widgets/Sponsored.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(90),child: AppBarMTL(),),
      drawer:
      SizedBox(
          width: 40.h,
          child: DrawerMT()),
      body: ListView(
        shrinkWrap: true,
        //padding: EdgeInsets.all(3),
        physics: BouncingScrollPhysics(),
        children: [
          MenuList(),
          ImageSlide(),
          NewDeals(),
          Sponsored(),
          Essentials()
        ],
      ),
    );
  }
}
