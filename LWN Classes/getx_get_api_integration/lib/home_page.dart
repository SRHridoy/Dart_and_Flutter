import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_controller.dart';
import 'package:getx_get_api_integration/product_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF009688), Color(0xFF80CBC4)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: const Color(0xFF004D40),
            title: const Text(
              'Get API Integration',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            centerTitle: true,
            elevation: 4,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<HomeController>(
              builder: (controller) {
                return homeController.isLoading
                    ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
                    : ListView.builder(
                  itemCount: homeController.products.length,
                  itemBuilder: (context, index) {
                    return productWidget(index);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget productWidget(int index) {
    ProductModel product = homeController.products[index];
    return Card(
      color: const Color(0xFFB2DFDB),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.image!,
            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
        ),
        title: Text(
          product.title!,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color(0xFF004D40),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          product.description!,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: const TextStyle(
            color: Color(0xFF00695C),
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
