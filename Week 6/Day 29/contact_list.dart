import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// MIXIN
mixin GreetingMixin {
  void sayHello() {
    print("Welcome to Contact List App");
  }
}

// CONTACT CLASS
class Contact with GreetingMixin {
  String _name;
  String _phone;

  // Constructor
  Contact(this._name, this._phone);

  // Getter
  String get name => _name;

  String get phone => _phone;

  // Setter
  set name(String newName) {
    _name = newName;
  }

  set phone(String newPhone) {
    _phone = newPhone;
  }
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<Contact> contacts = [
    Contact("Albin", "9876543210"),
    Contact("Rahul", "9123456780"),
    Contact("David", "9988776655"),
    Contact("Arjun", "9090909090"),
    Contact("Maria", "9112233445"),
  ];

  final List<String> categories = [
    "Family",
    "Friends",
    "Work",
    "College",
  ];

  @override
  Widget build(BuildContext context) {
    contacts[0].sayHello();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Contact List"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // CATEGORY GRID
            Padding(
              padding: const EdgeInsets.all(10),
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
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      categories[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ),

            // CONTACT LIST
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text(
                          contacts[index].name[0],
                        ),
                      ),
                      title: Text(contacts[index].name),
                      subtitle: Text(contacts[index].phone),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}