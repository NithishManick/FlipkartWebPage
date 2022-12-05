import 'package:flipkartweb/Widgets/AppBarMTL.dart';
import 'package:flipkartweb/Widgets/ImageSlide.dart';
import 'package:flipkartweb/Widgets/MenuList.dart';
import 'package:flutter/material.dart';

import '../Widgets/BottomDetail.dart';
import '../Widgets/Stories.dart';
import '../Widgets/ViewProducts.dart';

class Laptop extends StatefulWidget {
  const Laptop({Key? key}) : super(key: key);

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(55),child: AppBarMTL(),),
      body: ListView(
        shrinkWrap: true,

        children: [
          MenuList(),
          ImageSlide(),
          ViewProducts(),
          Stories(),
          BottomDetail()
        ],
      ),
    );
  }
}
