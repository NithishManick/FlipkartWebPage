import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Sevice/Service.dart';

class Storieslist extends StatefulWidget {
  String? st;

  Storieslist({Key? key, this.st}) : super(key: key);

  @override
  State<Storieslist> createState() => _StorieslistState();
}

class _StorieslistState extends State<Storieslist> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 80.w,
        height: 3.h,
        child: FutureBuilder(
          future: ProductService().getFullDetail(widget.st.toString()),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: ScrollPhysics(),
                itemCount:
                    snapshot.data == null ? 0 : snapshot.data?.products?.length,
                itemBuilder: (context, index) {
                  //ProductList prod = ProductList.fromJson(snapshot.data?.products[index]);
                  return IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          snapshot.data?.products![index].title.toString() ?? " ",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        VerticalDivider(

                         thickness: 1,
                        ),
                        //Text(''),
                      ],
                    ),
                  );



                });
          }),
      );
  }
}
