import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../controllers/navigation_controller.dart';

class ListViewPage extends StatelessWidget {

  ListViewPage({super.key});

  final NavigationController controller =
      NavigationController();

  final List<Product> products = [

    Product(
      name: "Laptop",
      description: "High performance laptop",
    ),

    Product(
      name: "Phone",
      description: "Latest smartphone device",
    ),

    Product(
      name: "Headphones",
      description: "Wireless noise cancelling",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: products.length,

        itemBuilder: (context, index) {

          return Card(
            child: ListTile(

              title: Text(products[index].name),

              trailing:
                  const Icon(Icons.arrow_forward),

              onTap: () {

                controller.openDetails(
                  context,
                  products[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}