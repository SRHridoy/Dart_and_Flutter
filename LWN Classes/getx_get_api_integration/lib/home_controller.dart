import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_service.dart';
import 'package:getx_get_api_integration/product_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //HomeService homeService = HomeService();
  late HomeService homeService;

  List<ProductModel> products = [];
  List<String> categories = [];
  List<ProductModel> productsByCategory = [];
  bool isCategoryLoading = false;
  bool isLoading = false;
  bool isProductByCategoryLoading = false;

  @override
  void onInit() {
    homeService = HomeService();
    getProducts();
    getCategories();
    super.onInit();
  }

  void getProducts() async {
    try {
      isLoading = true;
      update();
      http.Response response = await homeService.getProducts();
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        for (int i = 0; i < data.length; i++) {
          products.add(ProductModel.fromJson(data[i]));
        }
        isLoading = false;
        update();
      }
    } catch (e) {
      print(e);
    }
  }

  void getCategories() async {
    try {
      isCategoryLoading = true;
      update();
      http.Response response = await homeService.getCategories();
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        for (int i = 0; i < data.length; i++) {
          categories.add(data[i]);
          isCategoryLoading = false;
          update();
        }
      } else {
        print("Something wrong");
        isCategoryLoading = false;
        update();
      }
    } catch (e) {
      isCategoryLoading = false;
      update();
      print(e);
    }
  }

  void getProductsByCategory(String category) async {
    try {
      isProductByCategoryLoading = true;
      update();
      http.Response response =
          await homeService.getProductsByCategory(category);
      if(response.statusCode==200){
        var data = jsonDecode(response.body);
        for(int i = 0;i < data.lengh; i++){
          productsByCategory.add(ProductModel.fromJson(data[i]));

        }
        isProductByCategoryLoading = false;
        update();
      }
    } catch (e) {
      isProductByCategoryLoading = false;
      update();
    }
  }
}
