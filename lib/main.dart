import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


import 'Devices/Laptop.dart';
import 'Devices/Mobile.dart';
import 'Devices/Tablet.dart';
import 'ResponsiveLayout/ResponsiveLayout.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ResponsiveSizer(
        builder: (context, orientation, screenType){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(

              primarySwatch: Colors.blue,
            ),
            home:
            ResponsiveLayout(
              mobile: const Mobile(),
              lap: const Laptop(),
              tab: const Tablet(),
            ),
          );
        });
  }
}
