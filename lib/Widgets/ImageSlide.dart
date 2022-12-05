import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageSlide extends StatefulWidget {
  const ImageSlide({Key? key}) : super(key: key);

  @override
  State<ImageSlide> createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  CarouselController carouselController = CarouselController();
  List featuredImages = [

    "https://marketing.twitter.com/content/dam/marketing-twitter/apac/en_gb/success-stories/flipkart-bigbillionmuqabla-2021/masthead.jpg.twimg.1920.jpg",
    "https://www.91-cdn.com/hub/wp-content/uploads/2021/01/poco-x3-copy.jpg",
    "https://pbs.twimg.com/media/FN-b8oZVkAMzrkW.jpg",
    // "https://cdn.paisawapas.com/blog/wp-content/uploads/2017/08/flipkart-freedon-sale.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return (sw < 900)
        ?
    Container(
      padding: EdgeInsets.only(top: 2),
      child: ImageSlideshow(
              width: sw,
              height: 35.h,
              initialPage: 0,
              indicatorColor: Colors.black,
              indicatorBackgroundColor: Colors.grey,
              children: [
                Image.network(
                  "https://technosports.co.in/wp-content/uploads/2021/09/E_T0CvCVkAQBM2C.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://i.ytimg.com/vi/_8MBCEbP_A4/maxresdefault.jpg",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://s3b.cashify.in/gpro/uploads/2019/09/16135517/buyback_offer_banner.png",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://couponswala.com/blog/wp-content/uploads/2022/08/DIWALI-mobile-offer-min-1.png",
                  fit: BoxFit.fill,
                ),
                Image.network(
                  "https://s3.ap-south-1.amazonaws.com/happimobiles/homepage/384x-224.png",
                  fit: BoxFit.fill,
                ),
                //Image.network(""),
              ],
              autoPlayInterval: 3000,
              isLoop: true,
            ),
    )
        : Container(
            padding: EdgeInsets.only(top: 2),
            //width: sw,
            height: 55.h,
            child: Stack(
              children: [
                CarouselSlider(
                  carouselController: carouselController, // Give the controller
                  options: CarouselOptions(
                    height: 55.h,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    pageSnapping: true,
                    //aspectRatio: 16/9,
                  ),
                  items: featuredImages.map((featuredImage) {
                    return ClipRect(
                      child: Image.network(
                        featuredImage,
                        width: sw,
                        fit: BoxFit.cover,
                      ),
                    );
                  }).toList(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      // Use the controller to change the current page
                      carouselController.previousPage();
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () {
                      // Use the controller to change the current page
                      carouselController.nextPage();
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          );
  }
}
