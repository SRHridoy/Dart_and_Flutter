import 'package:get/get.dart';
import 'package:getx_get_api_integration/home_service.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  //HomeService homeService = HomeService();
  late HomeService homeService;

  @override
  void onInit() {
    homeService = HomeService();
    getCategories();
    super.onInit();
  }

  void getCategories() async{
    try {
      http.Response response = await homeService.getProducts();
      if(response.statusCode==200){
        print(response.body);
      }
    } catch (e) {

    }
  }
}
