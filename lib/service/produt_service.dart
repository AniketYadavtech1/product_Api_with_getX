import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:spacex/model/product_model.dart';

class ProductService {
  static Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(
        'https://fakestoreapi.com/products'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      var data = response.body;
      print(data);

      

      return jsonResponse.map((productJson) {
        try {
          print("Parsing product: $productJson");
          return Product.fromJson(productJson);
        } catch (e) {
          print("Error parsing product: $productJson");
          rethrow;
        }
      }).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }
}
