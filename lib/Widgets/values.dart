import 'package:flipkartweb/Sevice/Service.dart';
import 'package:flutter/material.dart';

class Values extends StatefulWidget {
  const Values({Key? key}) : super(key: key);

  @override
  State<Values> createState() => _ValuesState();
}

class _ValuesState extends State<Values> {
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
        future: ProductService().getCategories(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: snapshot.data == null ? 0 : snapshot.data?.length,
              itemBuilder: (context, index) {

                //ProductList prod = ProductList.fromJson(snapshot.data.products[index]);
                return Container(
                  height: 250,
                  child: Column(
                    children: [
                      Text(snapshot.data![index]),
                    ],
                  ),
                );
              });
        });
  }
}
