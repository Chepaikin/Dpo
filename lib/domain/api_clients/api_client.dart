import 'dart:convert';
import 'dart:io';

class ApiClient {
  final client = HttpClient();

  void getTable() async {
    final url = Uri.parse('http://192.168.88.254:29313/api/schedule');
    final request = await client.getUrl(url);
    final responce = await request.close();
    responce.transform(utf8.decoder).listen((event) {
      print(event);
    });
  }
}
