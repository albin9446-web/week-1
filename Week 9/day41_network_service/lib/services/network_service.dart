import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkService {

  Future<void> fetchTasks() async {

    final response = await http.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/todos',
      ),
    );

    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      print("Raw JSON Data:");
      print(data);

    } else {

      print(
        "Failed with status code: ${response.statusCode}",
      );
    }
  }
}