import 'package:getx_complete/Getx%20Project/Models/product_model.dart';
import 'package:http/http.dart' as http;


class ApiServices{
  static var client=http.Client();

  static Future<List<Product>?> fetchProducts() async{
    var response = await http.get(Uri.parse("http://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"),);
    //print("--------------${response}");



  if(response.statusCode==200){

    print("--------------${response}");

    var jsonString = response.body;

    print("--------------${jsonString}");

    return productFromJson(jsonString);

  }
  }
}
