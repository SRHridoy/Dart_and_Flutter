import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_controller.dart';
import 'package:getx_get_api_integration/product_model.dart';
import 'package:getx_get_api_integration/product_shimmer.dart';

class ProductsViewByCategory extends StatelessWidget {
  ProductsViewByCategory(this.category);
  String? category;

  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category!),
      ),
      body: Container(
        child: GetBuilder<HomeController>(builder: (controller) {
          return homeController.isProductByCategoryLoading?ProductShimmer():
            GridView.builder(
            gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: homeController.productsByCategory.length,
            itemBuilder: (context, index) {
              return productWidget(index);
            },
          );
        },
        ),
      ),
    );
  }

  Widget productWidget(int index) {
    ProductModel product = homeController.productsByCategory[index];
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Image.network(
                product.image!,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                product.title!,
                style: TextStyle(
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Price:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        product.price.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      Text(
                        product.rating!.rate.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
