import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';


abstract class ApiService {
  Future<dynamic> get(String endpoint);
  Future<dynamic> post(String endpoint, {required Map<String, dynamic> body});
}

class ApiServiceImpl implements ApiService {
  final String baseUrl;
  final Client client;

  ApiServiceImpl({required this.baseUrl, required this.client});

  @override
  Future<dynamic> get(String endpoint) async {
    final response = await client.get(Uri.parse('$baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  @override
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

final apiServiceProvider = Provider<ApiService>((ref) => ApiServiceImpl(baseUrl: 'https://jsonplaceholder.typicode.com', client: Client()));