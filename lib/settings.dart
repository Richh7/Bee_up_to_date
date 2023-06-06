import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _MySettingsState();
}

class _MySettingsState extends State<Settings> {
  final List<bool> _selectedWeather = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              size: 28,
              color: Theme.of(context).colorScheme.primary,
              Icons.arrow_back,
            )),
        title: Text(
          'Settings',
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary, fontSize: 26),
        ),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text(
                'Theme mode',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              trailing: ToggleButtons(
                direction: Axis.horizontal,
                onPressed: (int index) {
                  setState(() {
                    // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedWeather.length; i++) {
                      _selectedWeather[i] = i == index;
                    }
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                fillColor: Theme.of(context).colorScheme.primary,
                selectedColor: Colors.white,
                color: Colors.black,
                isSelected: _selectedWeather,
                children: [
                  Icon(Icons.brightness_2_sharp),
                  Icon(Icons.brightness_7),
                ],
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(
                size: 28,
                color: Theme.of(context).colorScheme.primary,
                Icons.info,
              ),
              horizontalTitleGap: 5,
              title: Text(
                'About app',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              onTap: () => showAboutDialog(
                  context: context,
                  applicationName: 'Bee up to date',
                  applicationIcon: Container(
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.antiAlias,
                    child:
                        const Image(image: AssetImage('assets/app_icon.png')),
                  ),
                  applicationVersion: 'Version 1.0',
                  children: [
                    const Text(
                        'The application is created to help beekepers in general. '
                        'It\'s related to \'Design of mobile Application\' exam.'),
                    const Divider(),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: const Text('Author: Riccardo Zamolo'))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
