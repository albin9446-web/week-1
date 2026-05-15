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
      home: const ResponsiveDashboard(),
    );
  }
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Dashboard"),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {

          bool isTablet = constraints.maxWidth > 700;

          return Row(
            children: [

              // Sidebar
              Expanded(
                flex: isTablet ? 2 : 3,
                child: Container(
                  color: Colors.blueGrey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.dashboard,
                          color: Colors.white, size: 40),
                      SizedBox(height: 20),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Main Content
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.grey.shade200,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(
                            Icons.analytics,
                            size: isTablet ? 120 : 80,
                            color: Colors.blue,
                          ),

                          const SizedBox(height: 20),

                          Text(
                            isTablet
                                ? "Tablet Dashboard View"
                                : "Mobile Dashboard View",
                            style: TextStyle(
                              fontSize: isTablet ? 30 : 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 20),

                          Text(
                            "This layout adjusts automatically using Expanded and LayoutBuilder.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: isTablet ? 20 : 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}