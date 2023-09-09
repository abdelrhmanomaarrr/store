import 'dart:convert';

import 'package:store/model/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProductsServices {
  Future<List<ProductModel>> getAllProduct() async {
    http.Response respone =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> data = jsonDecode(respone.body);

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
