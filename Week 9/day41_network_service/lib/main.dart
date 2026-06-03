import 'package:flutter/material.dart';
import 'services/network_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final networkService = NetworkService();

    networkService.fetchTasks();

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            "Fetching Tasks...\nCheck Console Output",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}