import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../Sevice/Service.dart';

import 'Details.dart';
import 'OfferZone.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  State<MenuList> createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  List product_name1 = [
    {
      "product_image":
          "https://www.pngplay.com/wp-content/uploads/7/Android-Mobile-Download-Free-PNG.png",
      "product_name": "Mobiles",
    },
    {
      "product_image":
          "https://rukminim1.flixcart.com/image/416/416/j9it30w0/laptop-skin-decal/v/a/u/apple-logo-laptop-skin-sticker-hdm-15-6-original-imaezab8tc6fnjr6.jpeg?q=70",
      "product_name": "Lap",
    },
    {
      "product_image":
          "https://media.allure.com/photos/626c79fbe9d86d7354215c46/2:1/w_3499,h_1749,c_limit/4-29%20summer%20fragrances.jpg",
      "product_name": "frag",
    },
    {
      "product_image":
          "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/beauty-products-1603140461.jpg?crop=0.502xw:1.00xh;0.250xw,0&resize=640:*",
      "product_name": "skin",
    },
    {
      "product_image":
          "https://img.freepik.com/premium-photo/shopping-bag-with-food-groceries-table-supermarket_8087-1414.jpg?w=2000",
      "product_name": "groceries",
    },
    {
      "product_image": "https://i.ytimg.com/vi/QSX6NKx6Ebs/maxresdefault.jpg",
      "product_name": "home-decoration",
    },
    {
      "product_image":
          "https://www.pngmart.com/files/7/Dining-Set-Transparent-Background.png",
      "product_name": "Furniture",
    },
    {
      "product_image":
          "https://assets.ajio.com/medias/sys_master/root/20220121/5Uam/61ea7e52f997dd662333949f/-473Wx593H-461948018-multi-MODEL.jpg",
      "product_name": "tops",
    },
    {
      "product_image":
          "https://assets.ajio.com/medias/sys_master/root/20220318/HBSV/62342213aeb26921afe285ca/glam_roots_blue_indian_fit_and_flare__dress.jpg",
      "product_name": "womens-dresses",
    },
    {
      "product_image":
          "https://rukminim1.flixcart.com/image/612/612/xif0q/shoe/m/k/s/-original-imagjagjvzdvthu4.jpeg?q=70",
      "product_name": "womens-shoes",
    },
    {
      "product_image":
          "https://m.media-amazon.com/images/I/71Z0-5X4BdL._UY550_.jpg",
      "product_name": "mens-shirts",
    },
    {
      "product_image":
          "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/10339033/2022/4/25/3170e623-ab80-4678-9628-14cb6033ab171650883660619USPoloAssnMenWhiteClarkinSneakers1.jpg",
      "product_name": "mens-shoes",
    },
    {
      "product_image":
          "https://m.media-amazon.com/images/I/71xM9lYP58L._UL1500_.jpg",
      "product_name": "mens-watches",
    },
    {
      "product_image":
          "https://i.pinimg.com/736x/c6/ce/51/c6ce511b028c7ef0c15335a3f7e69158.jpg",
      "product_name": "womens-watches",
    },
    {
      "product_image":
          "https://m.media-amazon.com/images/I/61GpT8+nFXL._UL1008_.jpg",
      "product_name": "womens-bags",
    },
    {
      "product_image":
          "https://m.media-amazon.com/images/I/71KPAGVMSSL._UY500_.jpg",
      "product_name": "womens-jewellery",
    },
    {
      "product_image":
          "https://m.media-amazon.com/images/I/61k6lXF8+fL._UL1500_.jpg",
      "product_name": "sunglasses",
    },
    {
      "product_image":
          "https://www.star-group.net/client/media/images/923/1920x1060x1/v2/h-automotive.jpg",
      "product_name": "automotive",
    },
    {
      "product_image":
          "https://dd5394a0b8ca8e97ba29-abf76f3d91a2125517d6c7c409f095c7.ssl.cf1.rackcdn.com/content/common/files/Category_Pages/Motorcycle_Home/image-motorcycle-home-supersport-link-2023-081022.jpg",
      "product_name": "motorcycle",
    },
    {
      "product_image":
          "https://images.indianexpress.com/2020/05/lighting-home_759_getty.jpg",
      "product_name": "lighting",
    },
  ];
  double icon_size = 0;
  double l = 7;
  double r = 7;
  double b = 3;
   double fs=0 ;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    double sw = MediaQuery.of(context).size.width;
    if (sw > 900) {
      icon_size = 50.0;
      l = 15;
      r = 15;
    } else if (sw > 600) {
      icon_size = 40.0;
      fs = 14.sp;
    } else {
      icon_size = 35.0;
      fs = 14.sp;
    }
    return Container(
        height: 17.h,
        child: FutureBuilder(
          future: ProductService().getCategories(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If we got an error
               if (snapshot.hasData) {
                // Extracting data from snapshot object
                return ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    itemCount:
                        snapshot.data == null ? 0 : snapshot.data?.length,
                    itemBuilder: (context, index) {
                      //ProductList prod = ProductList.fromJson(snapshot.data.products[index]);
                      return Padding(
                          padding:
                              EdgeInsets.only(left: l, right: r, bottom: b),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Details(
                                              cat: snapshot.data![index],
                                            )),
                                  );
                                },
                                iconSize: icon_size,
                                icon: Image.network(
                                    product_name1[index]["product_image"]),
                              ),
                              Text(
                                snapshot.data![index],
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w500),
                              ),
                            ],
                          ));
                    });
              }
            }

            // Displaying LoadingSpinner to indicate waiting state
            return Center(
              child: CircularProgressIndicator(),
            );
          },

          // if (snapshot.connectionState == ConnectionState.waiting) {
          //     return Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   }
          //
          //   return ListView.builder(
          //       shrinkWrap: true,
          //       scrollDirection: Axis.horizontal,
          //       physics: ScrollPhysics(),
          //       itemCount: snapshot.data == null ? 0 : snapshot.data?.length,
          //       itemBuilder: (context, index) {
          //         //ProductList prod = ProductList.fromJson(snapshot.data.products[index]);
          //         return Padding(
          //             padding: EdgeInsets.only(left: l, right: r, bottom: b),
          //             child: Column(
          //               children: [
          //                 IconButton(
          //                   onPressed: () {
          //                     Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (context) => Details(
          //                                 cat: snapshot.data![index],
          //                               )),
          //                     );
          //                   },
          //                   iconSize: icon_size,
          //                   icon: Image.network(
          //                       product_name1[index]["product_image"]),
          //                 ),
          //                 Text(
          //                   snapshot.data![index],
          //                   textAlign: TextAlign.center,
          //                   maxLines: 2,
          //                   overflow: TextOverflow.ellipsis,
          //                   style: TextStyle(fontSize: 14.sp),
          //                 ),
          //               ],
          //             ));
          //       });
        ));
  }
}
