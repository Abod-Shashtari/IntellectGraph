import 'dart:convert';
import 'dart:html';
import 'package:graph_x/constants/values.dart';
import 'package:xor_cipher/xor_cipher.dart';

class GraphFetchWeb {
  Future<Map<String, dynamic>> readJson(String url) async {
    final HttpRequest request = await HttpRequest.request(url);
    final String? data = request.responseText;
    if (data == null) {
      throw Exception('Error!');
    }
    String decryptedData = XOR.decrypt(data, myVar);
    return jsonDecode(decryptedData);
  }
}
