import 'package:bee_up_to_date/insert_apiary.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

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
        return Container(
          color: Theme.of(context).backgroundColor,
          child: Center(
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
                  child: Text('Apiary', style: Theme.of(context).textTheme.button),
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
                  child: Text('Hive', style: Theme.of(context).textTheme.button),
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
                  child: Text('Honey harvest', style: Theme.of(context).textTheme.button),
                ),
              ],
            ),
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
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [
          IconButton(
            onPressed: null,
            tooltip: 'Settings',
            icon: Icon(
              Icons.settings,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color,
            ),
          ),
        ],
      ),
      body: bodyFunction(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color,
            ),
            label: 'Add',
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color,
            ),
            label: 'Maps',
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_2_outlined,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color,
            ),
            label: 'Scan QR code',
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.show_chart,
              size: IconTheme.of(context).size,
              color: IconTheme.of(context).color,
            ),
            label: 'Statistics',
            backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).iconTheme.color,
        selectedItemColor: Theme.of(context).iconTheme.color,
        onTap: _onItemTapped,
      ),
    );
  }
}
