import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spacex/res/app_bar.dart';

class ProductCategory1 extends StatefulWidget {
  const ProductCategory1({super.key});

  @override
  State<ProductCategory1> createState() => _ProductCategory1State();
}

class _ProductCategory1State extends State<ProductCategory1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: ListView.builder(itemBuilder: (context, index) {
          return Card(
            child: Row(
              children: [
                CircleAvatar(),
              ],
            ),
          );
        }));
  }
}
