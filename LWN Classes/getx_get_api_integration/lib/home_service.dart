import 'package:http/http.dart' as http;

class HomeService {
  Future<http.Response> getProducts() async {
    String url = 'https://fakestoreapi.com/products';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }

  Future<http.Response>getCategories()async{
    String url = 'https://fakestoreapi.com/products/categories';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }

  Future<http.Response>getProductsByCategory(String category)async{
    String url = 'https://fakestoreapi.com/products/category/$category';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}

