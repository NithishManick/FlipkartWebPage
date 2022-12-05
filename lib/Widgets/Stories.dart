import 'package:flipkartweb/Widgets/StoriesList.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Sevice/Service.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List _stories = [
      "smartphones",
      "laptops",
      "fragrances",
      "skincare",
      "groceries",
      "home-decoration",
      "furniture",
      "tops",
      "womens-dresses",
      "womens-shoes",
      "mens-shirts",
      "mens-shoes",
      "mens-watches",
      "womens-watches",
      "womens-bags",
      "womens-jewellery",
      "sunglasses",
      "automotive",
      "motorcycle",
      "lighting"
    ];
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Top Stories :",
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: _stories.length,
              itemBuilder: (context, index) {
                return FutureBuilder(
                    future: ProductService()
                        .getFullDetail(_stories[index].toString()),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If we got an error
                         if (snapshot.hasData) {
                          // Extracting data from snapshot object
                          return Container(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${_stories[index]} - ",
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                    Storieslist(st: _stories[index])
                                  ],
                                )
                              ],
                            ),
                          );
                        }
                      }

                      // Displaying LoadingSpinner to indicate waiting state
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    });
              }),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Flipkart Plus",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "A world of limitless possibilities awaits you - Flipkart Plus was kickstarted as a loyalty reward programme for all its regular customers at zero subscription fee. All you need is 500 supercoins to be a part of this service. For every 100 rupees spent on Flipkart order, Plus members earns 4 supercoins & non-plus members earn 2 supercoins. Free delivery, early access during sales and shopping festivals, exchange offers and priority customer service are the top benefits to a Flipkart Plus member. In short, earn more when you shop more!",
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "No Cost EMI",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "In an attempt to make high-end products accessible to all, our No Cost EMI plan enables you to shop with us under EMI, without shelling out any processing fee. Applicable on select mobiles, laptops, large and small appliances, furniture, electronics and watches, you can now shop without burning a hole in your pocket. If you've been eyeing a product for a long time, chances are it may be up for a no cost EMI. Take a look ASAP! Terms and conditions apply.",
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "EMI on Debit Cards",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Did you know debit card holders account for 79.38 crore in the country, while there are only 3.14 crore credit card holders? After enabling EMI on Credit Cards, in another attempt to make online shopping accessible to everyone, Flipkart introduces EMI on Debit Cards, empowering you to shop confidently with us without having to worry about pauses in monthly cash flow. At present, we have partnered with Axis Bank, HDFC Bank, State Bank of India and ICICI Bank for this facility. More power to all our shoppers! Terms and conditions apply.",
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Large Appliances",
              style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              "Sleek TVs, power-saving refrigerators, rapid-cooling ACs, resourceful washing machines - discover everything you need to run a house under one roof. Our Dependable TV and Appliance Store ensures zero transit damage, with a replacement guarantee if anything goes wrong; delivery and installation as per your convenience and a double warranty (Official Brand Warranty along with an extended Flipkart Warranty) - rest assured, value for money is what is promised and delivered. Shop from market leaders in the country like Samsung, LG, Whirlpool, Midea, Mi, Vu, Panasonic, Godrej, Sony, Daikin, and Hitachi among many others.",
              style: TextStyle(fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }
}
