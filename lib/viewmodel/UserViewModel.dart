import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:vm_flutter_demo/model/User.dart';

import '../network/ApiService.dart';

class UserViewModel extends ChangeNotifier {

  List<User> userList = [];

  Future<List<User>> fetchData() async {
    final apiService = ApiService(baseUrl: 'https://jsonplaceholder.typicode.com', client: Client());

    try {
      // Get the list of dynamic objects from API
      List<dynamic> response = await apiService.get("todos");
      // Map each JSON object to a User object
      return userList = response.map((json) => User.fromJson(json)).toList();
      // notifyListeners();
    } catch (e) {
      throw Exception('Failed to fetch data');
    }
  }
}