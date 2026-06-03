import 'package:flutter/material.dart';
import 'models/task_model.dart';
import 'services/network_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskScreen(),
    );
  }
}

class TaskScreen extends StatelessWidget {
  TaskScreen({super.key});

  final NetworkService service = NetworkService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: FutureBuilder<List<TaskModel>>(
        future: service.fetchTasks(),
        builder: (context, snapshot) {
          if (snapshot.connectionState ==
              ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          final tasks = snapshot.data!;

          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  tasks[index].completed
                      ? Icons.check_circle
                      : Icons.circle_outlined,
                ),
                title: Text(tasks[index].title),
                subtitle: Text(
                  'Task ID: ${tasks[index].id}',
                ),
              );
            },
          );
        },
      ),
    );
  }
}