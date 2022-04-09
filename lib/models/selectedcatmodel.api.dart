import 'dart:convert';
import 'selectedcatmodel.dart';
import 'package:http/http.dart' as http;

class Selectedlist {
  static Future<List<SelectedCategoriesModel>> getCategories() async {
    var uri = Uri.https('worksaga.herokuapp.com', '/api/user/findfreelancers',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "Content-Type": "application/json",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return SelectedCategoriesModel.recipesFromSnapshot(_temp);
  }
}
