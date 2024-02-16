import 'dart:convert';
import 'dart:html';
import 'package:graph_x/models/my_cipher.dart';

class GraphFetchWeb {
  Future<Map<String, dynamic>> readJson(String url) async {
    final HttpRequest request = await HttpRequest.request(url);
    final String? data = request.responseText;
    if (data == null) {
      throw Exception('Error!');
    }

    String decryptedData = MyCipher().decrypter(data);
    return jsonDecode(decryptedData);
  }
}
