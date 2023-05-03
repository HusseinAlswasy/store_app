import 'package:store_app/helper/api.dart';

class AllGategorries {
  Future<List<dynamic>> allGategorries() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
