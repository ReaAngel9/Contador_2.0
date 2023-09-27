import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercounter/Providers/counter_provider.dart';
import 'package:providercounter/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

