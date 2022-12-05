import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'Details.dart';

class AppBarMTL extends StatefulWidget {
  const AppBarMTL({Key? key}) : super(key: key);

  @override
  State<AppBarMTL> createState() => _AppBarMTLState();
}

class _AppBarMTLState extends State<AppBarMTL> {
  List dd = [""];
  final TextEditingController searchController = TextEditingController();
  late String searchtext = "";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return (sw < 900)
        ? AppBar(
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Flipkart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontStyle: FontStyle.italic)),
                  RichText(
                      text: TextSpan(
                          text: "Explore",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontStyle: FontStyle.italic),
                          children: [
                        TextSpan(
                            text: " Plus+",
                            style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 12.sp,
                                fontStyle: FontStyle.italic)),
                      ])),
                ],
              ),
            ),
            actions: [
              Icon(
                Icons.add_box_rounded,
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
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                height: height / 12,
                padding: EdgeInsets.only(top: 3, left: 5, right: 5, bottom: 5),
                child: CupertinoSearchTextField(
                  controller: searchController,
                  style: TextStyle(fontSize: 16.sp),
                  backgroundColor: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  placeholder: "Search for Products, Brands and More",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.blue,
                  ),
                  onSubmitted: (value) {
                    value = searchController.text;

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(cat: value)),
                    );
                  },
                ),
              ),
            ))
        : AppBar(
            title: Padding(
              padding: EdgeInsets.only(left: 160, top: 6),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Flipkart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700)),
                      RichText(
                          text: TextSpan(
                              text: "Explore",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.sp),
                              children: [
                            TextSpan(
                                text: " Plus+",
                                style: TextStyle(
                                    color: Colors.yellow, fontSize: 10.sp)),
                          ])),
                    ],
                  ),
                  SizedBox(
                    width: width / 100,
                  ),
                  SizedBox(
                    width: width / 4,
                    height: 5.h,
                    child: CupertinoSearchTextField(
                      controller: searchController,
                      style: TextStyle(fontSize: 12.sp),
                      backgroundColor: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      placeholder: "Search for Products, Brands and More",

                      onSubmitted: (value) {
                        value = searchController.text;

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Details(cat: value)),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    width: width / 100,
                  ),
                  SizedBox(
                    width: width / 13,
                    height: 5.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.blue),
                        )),
                  ),
                  SizedBox(
                    width: width / 200,
                  ),
                  SizedBox(
                    width: width / 9,
                    height: 6.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Become a Seller",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        )),
                  ),
                  SizedBox(
                    width: width / 200,
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isDense: true,
                      //isExpanded: true,
                      hint: Text(
                        "More",
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      ),
                      customItemsHeights: [
                        ...List<double>.filled(MenuItems.firstItems.length, 30),
                        8,
                        ...List<double>.filled(
                            MenuItems.secondItems.length, 30),
                      ],
                      items: [
                        ...MenuItems.firstItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                            value: item,
                            child: MenuItems.buildItem(item),
                          ),
                        ),
                        const DropdownMenuItem<Divider>(
                            enabled: false, child: Divider()),
                        ...MenuItems.secondItems.map(
                          (item) => DropdownMenuItem<MenuItem>(
                            value: item,
                            child: MenuItems.buildItem(item),
                          ),
                        ),
                      ],
                      onChanged: (value) {
                        MenuItems.onChanged(context, value as MenuItem);
                      },
                      itemHeight: 48,
                      itemPadding: const EdgeInsets.only(left: 16, right: 0),
                      dropdownWidth: 160,
                      dropdownPadding: const EdgeInsets.symmetric(vertical: 6),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.white,
                      ),
                      dropdownElevation: 8,
                      offset: const Offset(0, 8),
                    ),
                  ),
                  SizedBox(
                    width: width / 200,
                  ),
                  SizedBox(
                    width: width / 9,
                    height: 6.h,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.shopping_cart_outlined,
                                color: Colors.white, size: 15),
                            Text(
                              "Cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          );
  }
}

class MenuItem {
  final String text;
  final IconData icon;

  const MenuItem({
    required this.text,
    required this.icon,
  });
}

class MenuItems {
  static const List<MenuItem> firstItems = [home, share, settings];
  static const List<MenuItem> secondItems = [logout];

  static const home =
      MenuItem(text: 'Notifications', icon: Icons.notifications);
  static const share =
      MenuItem(text: 'Customer Care', icon: Icons.question_mark);
  static const settings =
      MenuItem(text: 'Advertise', icon: Icons.auto_graph_sharp);
  static const logout = MenuItem(text: 'Download', icon: Icons.download);

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        Icon(item.icon, color: Colors.blue, size: 22),
        const SizedBox(
          width: 10,
        ),
        Text(
          item.text,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  static onChanged(BuildContext context, MenuItem item) {
    switch (item) {
      case MenuItems.home:
        //Do something
        break;
      case MenuItems.settings:
        //Do something
        break;
      case MenuItems.share:
        //Do something
        break;
      case MenuItems.logout:
        //Do something
        break;
    }
  }
}
