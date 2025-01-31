import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_api_integration/categories_shimmer.dart';
import 'package:getx_get_api_integration/home_controller.dart';
import 'package:getx_get_api_integration/product_model.dart';
import 'package:getx_get_api_integration/product_shimmer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Column(
        children: [
          GetBuilder<HomeController>(builder: (_) {
            return SizedBox(
              height: 40,
              child: homeController.isCategoryLoading
                  ? CategoriesShimmer()
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: homeController.categories.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              homeController.getProductsByCategory(
                                  homeController.categories[index]);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, right: 10),
                                child: Text(
                                  homeController.categories[index]
                                      .toUpperCase(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                            ),
                          ),
                        );
                      },
                    ),
            );
          }),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return homeController.isLoading
                    ? ProductShimmer()
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: homeController.products.length,
                          itemBuilder: (context, index) {
                            return productWidget(index);
                          },
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget productWidget(int index) {
    ProductModel product = homeController.products[index];
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
