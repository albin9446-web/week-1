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
      home: ProductHeaderPage(),
    );
  }
}

class ProductHeaderPage extends StatelessWidget {
  const ProductHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          height: 280,
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.deepPurple,
                Colors.purpleAccent,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),

            borderRadius: BorderRadius.circular(30),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text(
                "Product Detail",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  children: [

                    Container(
                      height: 80,
                      width: 80,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: const Icon(
                        Icons.shopping_bag,
                        size: 45,
                        color: Colors.deepPurple,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Premium Bag",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 10),

                        Text(
                          "\$120.00",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Spacer(),

              const Text(
                "Elegant modern design with premium quality materials.",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}