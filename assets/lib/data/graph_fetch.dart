import 'dart:convert';
import 'dart:io';

class GraphFetch {
  Future<Map<String, dynamic>> readJson(String path) async {
    final File file = File(path); //'lib/data/graph.json';
    String stringData = await file.readAsString();
    final data = await jsonDecode(stringData);
    return data;
  }
}
