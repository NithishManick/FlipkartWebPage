import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerMT extends StatefulWidget {
  const DrawerMT({Key? key}) : super(key: key);

  @override
  State<DrawerMT> createState() => _DrawerMTState();
}

class _DrawerMTState extends State<DrawerMT> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Drawer(
        child: ListView(
          padding: EdgeInsets.all(5),
      children: [
        Container(
            height: 8.h,
            color: Colors.blue,
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 13.sp,
                  color: Colors.white,
                ),
                label: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Login & Signup",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                    Image.network(
                        "https://www.citypng.com/public/uploads/small/11664325137egiwvyv41iyjsq0hhzpiices0dykhpk1tv0npqbwzi4n0zhjmdzptokphjmrd23qj4xkdqnyudt988tiwfqkubt24zbwxcapn4id.png"),
                  ],
                ))),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.bolt_outlined,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("SuperCoin Zone", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.grid_view,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Flipkart Plus Zone", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            const Divider(
              thickness: 2,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.grid_view_sharp,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("All Categories", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.bolt_outlined,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("SuperCoin Zone", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.house,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Trending Store", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.language_outlined,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Choose Language", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            const Divider(
              thickness: 2,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.local_offer,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Offer Zone", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Sell on Flipkart", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            const Divider(
              thickness: 2,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.card_giftcard,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("My Orders", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.camera_roll_outlined,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("Coupons", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("My Cart", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("My Wishlist", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("My Account", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                size: 15.sp,
                color: Colors.grey.shade700,
              ),
              label: Text("My Notifications", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            ),
            Divider(thickness: 2,),
            Text("Notification Preferences", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            Text("Help Centre", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,)),
            Text("Legal", style: TextStyle(fontSize: 14.sp,color: Colors.grey.shade700,))
          ],
        ),
      ],
    ));
  }
}
