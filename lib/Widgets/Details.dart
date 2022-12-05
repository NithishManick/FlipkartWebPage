import 'package:flipkartweb/Sevice/Service.dart';

import 'package:flipkartweb/Widgets/ProductDetail.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Details extends StatefulWidget {
  String? cat;

  Details({Key? key, this.cat}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Image.asset(
              "images/flip.png",
              height: 4.h,
              width: 10.w,
            ),
            SizedBox(
              width: 2.w,
            ),
            Text(
              widget.cat.toString(),
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18.sp),
            ),
          ],
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
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          FutureBuilder(
              future: ProductService().getFullDetail(widget.cat.toString()),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: snapshot.data == null
                          ? 0
                          : snapshot.data?.products?.length,
                      itemBuilder: (context, index) {
                        dynamic a =snapshot.data?.products![index].rating;
                        //ProductList prod = ProductList.fromJson(snapshot.data?.products[index]);
                        return Card(
                            elevation: 5,
                            child: Container(
                              height: 45.h,
                              //padding: const EdgeInsets.all(1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //

                                  Row(children: [
                                    Expanded(
                                      flex: 7,
                                      child: IconButton(
                                          icon: Image.network(snapshot
                                                  .data
                                                  ?.products![index]
                                                  .thumbnail ??
                                              " "),
                                          iconSize: 150,
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductDetail(
                                                        pd: snapshot
                                                            .data
                                                            ?.products![index]
                                                            .id,
                                                      )),
                                            );
                                          }),
                                    ),
                                    // const Spacer(
                                    //   flex: 1
                                    // ),
                                    Expanded(
                                        flex: 10,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  snapshot
                                                          .data
                                                          ?.products![index]
                                                          .title
                                                          .toString() ??
                                                      " ",
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 16.sp),
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
                                                  snapshot
                                                          .data
                                                          ?.products![index]
                                                          .price
                                                          .toString() ??
                                                      " ",
                                                  style: TextStyle(
                                                      fontSize: 16.sp),
                                                ),
                                              ],
                                            ),
                                            GFRating(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              size: 20,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              color: Colors.green,
                                              value: a,
                                              onChanged: (value) {
                                                // setState(() {
                                                //   a = value;
                                                // }
                                                //  );
                                              },
                                            ),
                                            // Text(
                                            //     "Rating - ${snapshot.data?.products![index].rating.toString() ?? " "}"),
                                            Row(
                                              children: [
                                                Text(
                                                    "${snapshot.data?.products![index].discountPercentage.toString() ?? " "}"),
                                                Icon(
                                                  Icons.percent_outlined,
                                                  size: 13,
                                                ),
                                                Text(" discount"),
                                              ],
                                            ),
                                          ],
                                        ))
                                  ]),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(snapshot
                                            .data?.products![index].description
                                            .toString() ??
                                        " "),
                                  ),
                                ],
                              ),
                            ));
                        // Container(
                        //   padding: const EdgeInsets.all(5),
                        //   child:  Row(
                        //     children: [
                        //       Image.network(snapshot.data?.products![index].thumbnail ?? " ",height: 15.h,width: 50.w,),
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           //Row(),
                        //           Text(snapshot.data?.products![index].title
                        //               .toString() ??
                        //               " ",maxLines: 2,
                        //             ),
                        //           Row(
                        //             children: [
                        //               Icon(Icons.currency_rupee_outlined,size: 13,),
                        //               Text(snapshot.data?.products![index].price
                        //                   .toString() ??
                        //                   " "),
                        //             ],
                        //           ),
                        //           Row(
                        //             children: [
                        //               Text(
                        //                   "${snapshot.data?.products![index].discountPercentage.toString() ?? " "}"),
                        //               Icon(Icons.percent_outlined,size: 13,),
                        //               Text(" discount"),
                        //             ],
                        //           ),
                        //           Text(
                        //               "Rating - ${snapshot.data?.products![index].rating.toString() ?? " "}"),
                        //
                        //           //Image.network(snapshot.data.products[index].thumbnail!),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // )
                      });
                }
              })
        ],
      ),
    );
  }
}
