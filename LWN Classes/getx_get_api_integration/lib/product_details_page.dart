import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_get_api_integration/product_model.dart';

class ProductDetailsPage extends StatelessWidget {
  ProductModel product;
  ProductDetailsPage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Image.network(product.image!,width: Get.width,height: 200,fit: BoxFit.cover,),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Text(product.title!,style: TextStyle(
                      fontSize: 14,fontWeight: FontWeight.bold,
                    ),)),
                Expanded(
                    flex: 1,
                    child: Text(product.price.toString())),
              ],
            )
          ],
        ),
      ),
    );
  }
}
