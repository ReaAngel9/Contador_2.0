import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/Providers/counter_provider.dart';

class SumaResta extends StatefulWidget {
  const SumaResta({super.key});

  @override
  State<SumaResta> createState() => _SumaResta();
}

class _SumaResta extends State<SumaResta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: 
              Text(
                context.watch<CounterProvider>().counter.toString(), 
                style: const TextStyle(fontSize: 40),
              ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: (){
                    context.read<CounterProvider>().increment();
                  }, 
                  child: const Icon(Icons.add)
                ),
                Expanded(child: Container()),
                ElevatedButton(
                  onPressed: (){
                    context.read<CounterProvider>().decrement();
                  }, 
                  child: const Icon(Icons.remove)
                ),
                Expanded(child: Container()),
                ElevatedButton(
                  onPressed: (){
                    context.read<CounterProvider>().restart();
                  }, 
                  child: const Icon(Icons.restore_sharp)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}