import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Sevice/Service.dart';

class ProductDetail extends StatefulWidget {
  int? pd;

  ProductDetail({Key? key, this.pd}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.pd.toString()),
        ),
        body: ListView(shrinkWrap: true, children: [
          FutureBuilder(
              future: ProductService().getProductDetail(widget.pd.toString()),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  a = snapshot.data?.images?.length ?? 0;
                  dynamic b = snapshot.data?.rating ?? 0;
                  return Row(children: [
                    Expanded(
                      flex: 7,
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,
                      children: List.generate(a, (index) {
                        return Image.network(
                                      snapshot.data?.images![index] ?? " ",height: 20.h,width: 40.w,);
                      }),)

                      // ListView.builder(
                      //     itemCount: a,
                      //     scrollDirection: Axis.vertical,
                      //     shrinkWrap: true,
                      //     itemBuilder: (context, index) {
                      //       return Image.network(
                      //           snapshot.data?.images![index] ?? " ",height: 20.h,width: 40.w,);
                      //     }),
                    ),
                    const Spacer(
                      flex: 1
                    ),
                    Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  snapshot.data?.title ?? " ",
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.currency_rupee,
                                  size: 13,
                                ),
                                Text(
                                  snapshot.data?.price.toString() ?? " ",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                            GFRating(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              size: 20,
                              allowHalfRating: true,
                              itemCount: 5,
                              color: Colors.green,
                              value: b,
                              onChanged: (value) {
                                // setState(() {
                                //   a = value;
                                // }
                                //  );
                              },
                            ),
                            Row(
                              children: [
                                Text(
                                    "${snapshot.data?.discountPercentage.toString() ?? " "}"),
                                Icon(
                                  Icons.percent_outlined,
                                  size: 13,
                                ),
                                Text(" discount"),
                              ],
                            ),
                            Text(snapshot.data?.description.toString() ?? " "),
                            Text(snapshot.data?.brand.toString() ?? " "),
                            Row(children: [
                              Text("Stocks - "),
                              Text(snapshot.data?.stock.toString() ?? " "),
                            ],)

                          ],
                        ))
                  ]);

                  // Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // children: [
                  //     Container(
                  //       height: 45.h,
                  //       child: ListView.builder(
                  //         itemCount: a,
                  //         scrollDirection: Axis.vertical,
                  //         shrinkWrap: true,
                  //         itemBuilder: (context, index) {
                  //           return Image.network(
                  //               snapshot.data?.images![index] ?? " ");
                  //         }),
                  //     ),

                  // Card(
                  //     elevation: 10,
                  //     child: Container(
                  //         height: 45.h,
                  //         //padding: const EdgeInsets.all(1),
                  //         child:
                  //         Column(
                  //           crossAxisAlignment: CrossAxisAlignment.start,
                  //           //mainAxisAlignment: MainAxisAlignment.start,
                  //           children: [
                  //             Row(
                  //               mainAxisAlignment:
                  //                   MainAxisAlignment.spaceBetween,
                  //               children: [
                  //                 Text(
                  //                   snapshot.data?.title ?? " ",
                  //                   maxLines: 2,
                  //                   style: TextStyle(fontSize: 16.sp),
                  //                 ),
                  //                 Icon(Icons.favorite_border),
                  //               ],
                  //             ),
                  //             Row(
                  //               children: [
                  //                 const Icon(
                  //                   Icons.currency_rupee,
                  //                   size: 13,
                  //                 ),
                  //                 Text(
                  //                   snapshot.data?.price.toString() ?? " ",
                  //                   style: TextStyle(fontSize: 16.sp),
                  //                 ),
                  //               ],
                  //             ),
                  //             GFRating(
                  //               padding:
                  //                   EdgeInsets.symmetric(horizontal: 4.0),
                  //               size: 20,
                  //               allowHalfRating: true,
                  //               itemCount: 5,
                  //               color: Colors.green,
                  //               value: b,
                  //               onChanged: (value) {
                  //                 // setState(() {
                  //                 //   a = value;
                  //                 // }
                  //                 //  );
                  //               },
                  //             ),
                  //             Row(
                  //               children: [
                  //                 Text(
                  //                     "${snapshot.data?.discountPercentage.toString() ?? " "}"),
                  //                 Icon(
                  //                   Icons.percent_outlined,
                  //                   size: 13,
                  //                 ),
                  //                 Text(" discount"),
                  //               ],
                  //             ),
                  //             Text(snapshot.data?.description.toString() ??
                  //                 " "),
                  //           ],
                  //         ))),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 8.0),
                  //   child: Text(
                  //       snapshot.data?.description.toString() ?? " "),
                  // ),
                }
              })
        ]));
  }
}
