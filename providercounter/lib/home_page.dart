import 'package:flutter/material.dart';
import 'package:providercounter/Screens/multiplica.dart';
import 'package:providercounter/Screens/multiplos.dart';
import 'package:providercounter/Screens/prime.dart';
import 'package:providercounter/Screens/suma_resta.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPage = 0;

  final List<Widget> _pages = <Widget>[
    const SumaResta(),
    const Multiplica(),
    const Prime(),
    const Multiplos(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter 2.0')),
      ),
      body: _pages[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        }, 
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Suma y Resta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.close),
            label: 'Multiplica',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Prime',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Multiplos',
          ),
        ],
        selectedLabelStyle: const TextStyle(color: Colors.lightBlueAccent),
        selectedItemColor: Colors.lightBlueAccent, // Cambia el color de fondo del elemento seleccionado
        unselectedItemColor: Colors.blue, // Cambia el color de fondo del elemento no seleccionado
        showUnselectedLabels: true,
      ),
    );
  }
}
