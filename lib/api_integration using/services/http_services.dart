import '../modal/product model.dart';
import 'package:http/http.dart' as http;

class HttpServices
{
  static Future<List<Welcome>> fetchdataProduct() async
  {
    var responce = await http.get(Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"));
    if(responce.statusCode ==200)
      {
        var data = responce.body;
        return welcomeFromJson(data);
      }
    else
      {
        throw Exception();
      }
  }
}