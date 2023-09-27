import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/Providers/counter_provider.dart';

class Multiplica extends StatefulWidget {
  const Multiplica({Key? key}) : super(key: key);

  @override
  State<Multiplica> createState() => _Multiplica();
}

class _Multiplica extends State<Multiplica> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              const SizedBox(height: 16.0), // Espacio en blanco
              Container(
                alignment: Alignment.center,
                child: Text(
                  context.watch<CounterProvider>().counter.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiplica2();
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Multiplicando'),
                      content: const Text('Multiplicando por 2'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        )
                      ],
                    ),
                  );
                },
                child: const Text('x2'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiplica3();
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Multiplicando'),
                      content: const Text('Multiplicando por 3'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        )
                      ],
                    ),
                  );
                },
                child: const Text('x3'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().multiplica5();
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Multiplicando'),
                      content: const Text('Multiplicando por 5'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        )
                      ],
                    ),
                  );
                },
                child: const Text('x5'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
