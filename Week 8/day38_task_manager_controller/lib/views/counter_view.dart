import 'package:flutter/material.dart';
import '../controllers/counter_controller.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  final CounterController controller = CounterController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager Controller"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Text(
          '${controller.counter}',
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {

              setState(() {
                controller.decrement();
              });

            },
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            heroTag: "reset",
            backgroundColor: Colors.orange,
            onPressed: () {

              setState(() {
                controller.reset();
              });

            },
            child: const Icon(Icons.refresh),
          ),

          const SizedBox(width: 20),

          FloatingActionButton(
            heroTag: "plus",
            onPressed: () {

              setState(() {
                controller.increment();
              });

            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}