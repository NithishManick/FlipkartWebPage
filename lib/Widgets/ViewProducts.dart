import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Sevice/Service.dart';

import 'ProductDetail.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({Key? key}) : super(key: key);

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  List _view = [
    {
      "tit": "Best of Electronics",
      "cat": "laptops",
      "img":
          "https://m.apnlive.com/sortd-service/imaginary/v22-01/jpg/large/high?url=YXBuLW5ld3MtcHJvZC1zb3J0ZC9tZWRpYWZhZjk3MjQwLWFlOTMtMTFlYy04ZDVkLTQzNzE5ZjQwZjVjZGpwZw=="
    },
    {
      "tit": "Home & Kitchen Essentials",
      "cat": "groceries",
      "img":
          "https://cdn3.vectorstock.com/i/1000x1000/46/47/home-appliances-cooking-kitchen-equipment-vector-13724647.jpg"
    },
    {
      "tit": "SkinCare",
      "cat": "skincare",
      "img":
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-skincare-products-1656081764.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    return ListView.builder(
        itemCount: _view.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(
              top: 20,
              left: 5,
              right: 5,
            ),
            height: 65.h,
            child: Card(
              elevation: 3,
              child: Row(
                children: [
                  Container(
                    width: 18.w,
                    padding: EdgeInsets.only(top: 100),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            _view[index]["tit"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18.sp),
                          ),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        ElevatedButton(
                            onPressed: () {}, child: Text("View All")),
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            _view[index]["img"],
                            height: 19.h,
                            width: 15.w,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: FutureBuilder(
                        future:
                            ProductService().getFullDetail(_view[index]["cat"]),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            return ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: ScrollPhysics(),
                                itemCount: snapshot.data == null
                                    ? 0
                                    : snapshot.data?.products?.length,
                                itemBuilder: (context, index) {
                                  dynamic a =
                                      snapshot.data?.products![index].rating;
                                  return Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        //

                                        IconButton(
                                            icon: Image.network(snapshot
                                                    .data
                                                    ?.products![index]
                                                    .thumbnail ??
                                                " "),
                                            iconSize: 200,
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProductDetail(
                                                            pd: snapshot
                                                                .data
                                                                ?.products![
                                                                    index]
                                                                .id)),
                                              );
                                            }),

                                        Text(
                                          snapshot.data?.products![index].title
                                                  .toString() ??
                                              " ",
                                          //overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          maxLines: 2,
                                          style: TextStyle(fontSize: 15.sp),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.currency_rupee_outlined,
                                              size: 17,
                                            ),
                                            Text(
                                              snapshot.data?.products![index]
                                                      .price
                                                      .toString() ??
                                                  " ",
                                              // overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: TextStyle(fontSize: 15.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
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
                                      ],
                                    ),
                                  );
                                });
                          }

                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
