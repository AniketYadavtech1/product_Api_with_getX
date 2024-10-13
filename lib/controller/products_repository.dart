import 'dart:convert';

import 'package:http/http.dart' as http;

class ProductsRepository {

  var url =  'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline';

  loadProductsFromApi() async {
    var response = await http.get(Uri.parse(url));

    return json.decode(response.body);
  }
}
