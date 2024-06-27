import 'dart:convert';
import 'package:http/http.dart';

class ApiService {
  final String baseUrl;
  final Client client;

  ApiService({required this.baseUrl, required this.client});

  Future<dynamic> get(String endpoint) async {
    final response = await client.get(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  Future<dynamic> post(String endpoint, {required Map<String, dynamic> body}) async {
    final response = await client.post(
      Uri.parse('$baseUrl/$endpoint'),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'},
    );
    return _handleResponse(response);
  }

  dynamic _handleResponse(Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}