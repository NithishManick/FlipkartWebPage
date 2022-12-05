import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomDetail extends StatelessWidget {
  const BottomDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50, top: 50, right: 30),
      height: 65.h,
      color: Colors.indigo.shade400,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 7,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ABOUT",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Contact Us",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "About Us",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Careers",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Flipkart Stories",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Press",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Flipkart Wholesale",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Corporate Information",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "HELP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Payments",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Shipping",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Cancellation & Returns",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "FAQ",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Report Infringerment",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "POLICY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Return Policy",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Terms Of Use",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Security",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Privacy",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Sitemap",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "EPR Compliance",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "SOCIAL",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Facebook",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Twitter",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                          Text(
                            "Youtube",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mail Us:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Flipkart Internet Private Limited",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Clove Embassy Tech Village,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Outer Ring Road,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Devarabeesanahalli Village,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Bengaluru, 560103,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Karnataka, India",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Registered Office Address:",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            "Flipkart Internet Private Limited,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Buildings Alyssa, Begonia &",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Clove Embassy Tech Village,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Outer Ring Road,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Devarabeesanahalli Village,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Bengaluru, 560103,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Karnataka, India,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          
                          Text(
                            "CIN : U51109KA2012PTC066107,",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            "Telephone: 044-45614700",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Divider(
            thickness: 1,
            color: Colors.white,
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.shopping_bag,
                    color: Colors.amber,
                  ),
                  Text(
                    "Become a Seller",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  )
                ],
              ),
              SizedBox(width: 3.w,),
              Row(
                children: [
                  Icon(
                    Icons.stars,
                    color: Colors.amber,
                  ),
                  Text(
                    "Advertise",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  )
                ],
              ),SizedBox(width: 3.w,),
              Row(
                children: [
                  Icon(
                    Icons.card_giftcard,
                    color: Colors.amber,
                  ),
                  Text(
                    "Gift Card",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  )
                ],
              ),SizedBox(width: 3.w,),
              Row(
                children: [
                  Icon(
                    Icons.question_mark,
                    color: Colors.amber,
                  ),
                  Text(
                    "Help Centre",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),

                ],
              ),SizedBox(width: 3.w,),
              Row(
                children: [
                  Icon(
                    Icons.copyright_outlined,
                    color: Colors.amber,
                  ),
                  Text(
                    "2022-2023 Flipkart.com",
                    style: TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),

                ],
              ),SizedBox(width: 5.w,),
              Image.network(

                "https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Former_Visa_%28company%29_logo.svg/175px-Former_Visa_%28company%29_logo.svg.png",height: 3.h,width: 3.w,),SizedBox(width: 2.w,),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/200px-Mastercard-logo.svg.png",height: 3.h,width: 3.w,),SizedBox(width: 2.w,),
              Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/RuPay.svg/1280px-RuPay.svg.png",height: 3.h,width: 3.w,),
              // Image.network(src,height: 2.h,width: 2.w,),
            ],
          ),
        ],
      ),
    );
  }
}
