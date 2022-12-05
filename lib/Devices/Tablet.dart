import 'package:flipkartweb/Widgets/MenuList.dart';
import 'package:flutter/material.dart';

import '../Widgets/AppBarMTL.dart';
import '../Widgets/DrawerMT.dart';
import '../Widgets/Essentials.dart';
import '../Widgets/ImageSlide.dart';
import '../Widgets/NewDeals.dart';
import '../Widgets/Sponsored.dart';

class Tablet extends StatefulWidget {
  const Tablet({Key? key}) : super(key: key);

  @override
  State<Tablet> createState() => _TabletState();
}

class _TabletState extends State<Tablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(100),child: AppBarMTL(),),
      drawer: DrawerMT(),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
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
