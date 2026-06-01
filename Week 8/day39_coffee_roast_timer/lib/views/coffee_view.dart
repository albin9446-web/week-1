import 'package:flutter/material.dart';
import '../controllers/coffee_controller.dart';

class CoffeeView extends StatefulWidget {
  const CoffeeView({super.key});

  @override
  State<CoffeeView> createState() => _CoffeeViewState();
}

class _CoffeeViewState extends State<CoffeeView> {
  final CoffeeController controller = CoffeeController();

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: controller,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Coffee Roast Timer"),
            backgroundColor: Colors.brown,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                    color: controller.roastColor,
                    shape: BoxShape.circle,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  "Time: ${controller.seconds}s",
                  style: const TextStyle(fontSize: 28),
                ),

                const SizedBox(height: 10),

                Text(
                  controller.stage,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 40),

                ElevatedButton(
                  onPressed: controller.startRoasting,
                  child: const Text("Start Roasting"),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ElevatedButton(
                      onPressed: controller.back,
                      child: const Text("Back"),
                    ),

                    const SizedBox(width: 15),

                    ElevatedButton(
                      onPressed: controller.reset,
                      child: const Text("Reset"),
                    ),

                    const SizedBox(width: 15),

                    ElevatedButton(
                      onPressed: controller.forward,
                      child: const Text("Forward"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}