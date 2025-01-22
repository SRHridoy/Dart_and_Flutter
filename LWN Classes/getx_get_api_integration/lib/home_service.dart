import 'package:http/http.dart' as http;

class HomeService {
  Future<http.Response> getProducts() async {
    String url = 'https://fakestoreapi.com/products';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}
