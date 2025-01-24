import 'dart:convert';
import 'package:code_forces_analyzer/models/user_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../services/api_service.dart';

class HomeController extends GetxController {
  late ApiService apiService;

  bool isLoading = false;
  List<UserModel> users = [];
  final String handle;

  HomeController({required this.handle});

  @override
  void onInit() {
    apiService = ApiService();
    super.onInit();
    getUserInfo(handle);
  }

  void getUserInfo(String handle) async {
    try {
      isLoading = true;
      update();

      http.Response response = await apiService.getUserInfo(handle);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);

        if (data != null && data['result'] != null) {
          users.clear();
          users.add(UserModel.fromJson(data));
          //print(data);
        } else {
          Get.snackbar("Error", "Invalid data received from the server!");
        }
      } else {
        Get.snackbar("Error", "Failed to fetch user info! Status Code: ${response.statusCode}");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error", "An error occurred while fetching user info!");
    } finally {
      isLoading = false;
      update();
    }
  }
}
