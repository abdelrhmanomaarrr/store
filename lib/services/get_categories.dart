import 'dart:convert';

import 'package:http/http.dart' as http;

class GetALLCategories {
  Future<List<dynamic>> getAllCategories() async {
    http.Response respone = await http
        .get(Uri.parse('https://fakestoreapi.com/products/categories'));

    List<dynamic> data = jsonDecode(respone.body);

    return data;
  }
}
