import 'package:http/http.dart' as http;
import 'dart:convert';

class Provider {

  Future<String> getImageUrl() async {
    final response = await http.get("https://api.thecatapi.com/v1/images/search");
    if (response.statusCode == 200) {
      var cat = json.decode(response.body);
      return cat[0]['url'];
    } else {
      throw Exception('Failed to load files');
    }
  }

}