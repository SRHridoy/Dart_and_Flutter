import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_service.dart';
import 'package:getx_get_api_integration/product_model.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //HomeService homeService = HomeService();
  late HomeService homeService;

  List<ProductModel> products=[];
  bool isLoading = false;
  @override
  void onInit() {
    homeService = HomeService();
    getCategories();
    super.onInit();
  }

  void getCategories() async{
    try {
      isLoading = true;
      update();
      http.Response response = await homeService.getProducts();
      if(response.statusCode==200){
        var data = jsonDecode(response.body);
        for(int i = 0; i < data.length;i++){
          products.add(ProductModel.fromJson(data[i]));
        }
        isLoading = false;
        update();
      }
    } catch (e) {
      print(e);
    }
  }
}
