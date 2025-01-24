import 'package:http/http.dart' as http;
class ApiService{
  Future<http.Response> getUserInfo(String handle) async{
    String url = 'https://codeforces.com/api/user.info?handles=$handle&checkHistoricHandles=false';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}