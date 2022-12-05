import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Model/ProductDetails.dart';
import '../Model/productlist.dart';

class ProductService {
  Future<List> getCategories() async {
    var url = "https://dummyjson.com/products/categories";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body) as List;
      return jsonData;
    } else {
      throw Exception("Failed");
    }
  }

  Future<ProductList> getFullDetail(String tempurl) async {
    var baseurl = "https://dummyjson.com/products/category/";
    var url = Uri.parse(baseurl + tempurl);
    final response = await http.get(url);
    //print(response.statusCode);
    if (response.statusCode == 200) {
      return ProductList.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed");
    }
  }


    Future<ProductDetails> getProductDetail(String tempurl) async {
      var baseurl = "https://dummyjson.com/products/";
      var url = Uri.parse(baseurl + tempurl);
      final response = await http.get(url);
      //print(response.statusCode);
      if (response.statusCode == 200) {

        return ProductDetails.fromJson(jsonDecode(response.body));
      } else {
        throw Exception("Failed");
      }
    }
}
