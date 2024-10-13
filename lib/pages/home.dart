import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/products_controller.dart';

import 'build_categoriesrow.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ProductsController productsController = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTop(),
              BuildCategoriesRow(),
              Obx(
                () {
                  if (productsController.loading.value) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (productsController.products.isEmpty) {
                    return Center(
                      child: Text('No products found'),
                    );
                  }

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: productsController.products.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0.0,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(productsController
                                          // .products[index]['image']),
                                          .products[index]['image_link']),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(productsController.products[index]
                                      ['product_type']),
                                  Text(productsController.products[index]
                                      ['brand']),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              // ProductList()
            ],
          ),
        ),
      ),
    );
  }
}

Row _buildTop() {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          children: [
            Text(
              'Cloths',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down),
            )
          ],
        ),
      ),
      IconButton(onPressed: () {}, icon: Icon(Icons.filter_list))
    ],
  );
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.black),
    leading: BackButton(),
    elevation: 0,
    title: Text(
      'Shopping',
      style: TextStyle(color: Colors.black),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      IconButton(
          onPressed: () {}, icon: Icon(Icons.notifications_none_outlined)),
      IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined)),
    ],
  );
}
