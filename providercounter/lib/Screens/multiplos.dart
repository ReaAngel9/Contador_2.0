import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/Providers/counter_provider.dart';
import 'dart:math';

class Multiplos extends StatefulWidget {
  const Multiplos({Key? key}) : super(key: key);

  @override
  State<Multiplos> createState() => _MultiplosState();
}

class _MultiplosState extends State<Multiplos> {
  List<Color> generateRandomColors(int numColors) {
    final random = Random();
    final List<Color> colorList = List.generate(numColors, (_) {
      final int red = random.nextInt(256);
      final int green = random.nextInt(256);
      final int blue = random.nextInt(256);
      return Color.fromRGBO(red, green, blue, 1.0);
    });
    return colorList;
  }

  final numColors = 10;
  late List<Color> colors;
  int selectedColorIndex = 0;

  @override
  void initState() {
    super.initState();
    colors = generateRandomColors(numColors);
  }

  void updateSelectedColor(int counterValue) {
    if (counterValue % 10 == 0) {
      final random = Random();
      setState(() {
        selectedColorIndex = random.nextInt(colors.length);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final counterValue = context.watch<CounterProvider>().counter;

    // Llama a la función para actualizar el color seleccionado
    updateSelectedColor(counterValue);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              counterValue.toString(),
              style: TextStyle(
                fontSize: 40,
                color: colors[selectedColorIndex],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiplierOfTen();
                },
                child: const Icon(Icons.multiple_stop_sharp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
