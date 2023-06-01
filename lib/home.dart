import 'package:bee_up_to_date/insert_apiary.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key, required this.title});

  final String title;

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _selectedIndex = 0;

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
                      builder: (context) => const MyInsertApiaryForm(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shadowColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Apiary'),
              ),
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shadowColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Hive'),
              ),
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  shadowColor: Colors.black,
                  padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Honey harvest'),
              ),
            ],
          ),
        );
      case 1:
        return Container(color: Colors.blue);
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
            widget.title,
            style: const TextStyle(fontSize: 26)
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: bodyFunction(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Maps',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2_outlined),
            label: 'Scan QR code',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Statistics',
            backgroundColor: Colors.amber,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: _onItemTapped,
      ),
    );
  }
}
