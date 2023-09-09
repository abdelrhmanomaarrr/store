import 'dart:convert';

import 'package:store/model/product_model.dart';
import 'package:http/http.dart' as http;

class GetCategoriesService {
  Future<List<ProductModel>> getCategoriesService(
      {required String categoryName}) async {
    http.Response respone = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$categoryName'));

    List<dynamic> data = jsonDecode(respone.body);

    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromJson(data[i]));
    }
    return productList;
  }
}
