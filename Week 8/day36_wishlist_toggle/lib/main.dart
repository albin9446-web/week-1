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
      home: const WishlistPage(),
    );
  }
}

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {

  List<Map<String, dynamic>> items = [
    {"name": "Laptop", "liked": false},
    {"name": "Smartphone", "liked": false},
    {"name": "Headphones", "liked": false},
    {"name": "Keyboard", "liked": false},
    {"name": "Mouse", "liked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist Toggle"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: items.length,

        itemBuilder: (context, index) {

          return Card(
            margin: const EdgeInsets.all(10),

            child: ListTile(
              title: Text(items[index]["name"]),

              trailing: IconButton(

                icon: Icon(
                  items[index]["liked"]
                      ? Icons.favorite
                      : Icons.favorite_border,

                  color: items[index]["liked"]
                      ? Colors.red
                      : Colors.grey,
                ),

                onPressed: () {

                  setState(() {

                    items[index]["liked"] =
                        !items[index]["liked"];

                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

// Research Answer:
// If the list is global, Flutter may not properly manage UI updates
// and widget state. Global state can cause unexpected behavior
// because multiple widgets may share and modify the same data
// outside the widget lifecycle.
//
// Using local state inside a StatefulWidget with setState ensures
// proper UI rebuilding and state management.