import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacex/controller/products_controller.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final ProductsController productsController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsController.products.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Expanded(child: Text(productsController.products[index]['title'])),
                Expanded(
                  child: Text(
                    productsController.products[index]['description'],
                  ),
                ),
                Expanded(
                  child: Text(
                    "\$${productsController.products[index]['price']}",
                  ),
                )
              ],
            ),
          );
        });
  }
}
