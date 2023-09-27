import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/Providers/counter_provider.dart';

class Prime extends StatefulWidget {
  const Prime({super.key});

  @override
  State<Prime> createState() => _Prime();
}

class _Prime extends State<Prime> {

  @override
  Widget build(BuildContext context) {
    final counterProvider = context.read<CounterProvider>();
    final counterValue = context.watch<CounterProvider>().counter;
    final originalValue = context.watch<CounterProvider>().originalValue;
    final isPrime = counterValue == 1; // Verifica si el número es primo
    final textColor = isPrime ? Colors.green : Colors.blue;
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    originalValue.toString(),
                    style: const TextStyle(fontSize: 40), // Establece el color del texto
                  ),
                  Text(
                    isPrime ? 'Es primo' : 'No es primo',
                    style: TextStyle(fontSize: 30, color: textColor),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                context.read<CounterProvider>().isPrime();
              },
              child: const Icon(Icons.numbers),
            ),
          ),
          TextButton(onPressed: (){
            counterProvider.setCounter(originalValue);
          }, 
          child: const Text('Mantener'))
        ],
      ),
    );
  }
}
