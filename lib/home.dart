import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double number = 0;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    heightController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
            child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        )),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
                width: 300,
                child: TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height',
                  ),
                )),
            const SizedBox(height: 12),
            SizedBox(
                width: 300,
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'weight',
                  ),
                )),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = int.parse(heightController.text) /
                        int.parse(weightController.text);
                  });
                },
                child: const Text("calculate")),
            const SizedBox(width: 12),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    number = 0;
                    heightController.clear();
                    weightController.clear();
                  });
                },
                child: const Text("reset ")),
          ],
        )
      ],
    );
  }
}
