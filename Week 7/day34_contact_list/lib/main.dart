import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  final List<String> categories = const [
    "Family",
    "Friends",
    "Work",
    "College",
  ];

  final List<Map<String, String>> contacts = const [
    {"name": "Albin", "phone": "9876543210"},
    {"name": "John", "phone": "9123456780"},
    {"name": "Emma", "phone": "9988776655"},
    {"name": "Sophia", "phone": "9871234567"},
    {"name": "David", "phone": "9012345678"},
    {"name": "Chris", "phone": "9090909090"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact List"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [

          // Category Grid
          Padding(
            padding: const EdgeInsets.all(12),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Contact List
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Text(
                        contacts[index]["name"]![0],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(contacts[index]["name"]!),
                    subtitle: Text(contacts[index]["phone"]!),
                    trailing: const Icon(Icons.phone),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}