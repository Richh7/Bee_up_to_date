import 'package:flutter/material.dart';
import 'package:bee_up_to_date/settings.dart';
import 'package:bee_up_to_date/insert_apiary.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget bodyFunction() {
    switch (_selectedIndex) {
      case 0:
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const InsertApiaryForm(),
                    ),
                  );
                },
                child: const Text('Apiary'),
              ),
              ElevatedButton(
                onPressed: null,
                child: const Text('Hive'),
              ),
              ElevatedButton(
                onPressed: null,
                child: const Text('Honey harvest'),
              ),
            ],
          ),
        );
      case 1:
        return Container();
      case 2:
        return Container(color: Colors.orange);
      default:
        return Container(color: Colors.blue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(image: AssetImage('assets/bee.png')),
        title: Text(
          'Bee up to date',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 26),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            },
            tooltip: 'Settings',
            icon: Icon(
              size: 30,
              color: Theme.of(context).colorScheme.primary,
              Icons.settings,
            ),
          ),
        ],
      ),
      body: bodyFunction(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber[100],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
            ),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.show_chart,
            ),
            label: 'Statistics',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        showUnselectedLabels: false,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        onTap: _onItemTapped,
      ),
    );
  }
}
