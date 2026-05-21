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
        title: const Text("MVC Counter App"),
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Text(
          '${controller.counter}',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          FloatingActionButton(
            heroTag: "decrement",
            onPressed: () {

              setState(() {
                controller.decrement();
              });

            },
            child: const Icon(Icons.remove),
          ),

          const SizedBox(width: 15),

          FloatingActionButton(
            heroTag: "increment",
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