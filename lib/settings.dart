import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

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
              leading: Icon(
                size: 28,
                color: Theme.of(context).colorScheme.primary,
                Icons.info,
              ),
              horizontalTitleGap: 5,
              title: Text('About app'),
              onTap: () => showAboutDialog(
                  context: context,
                  applicationName: 'Bee up to date',
                  applicationIcon: Container(
                    height: 50,
                    width: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    clipBehavior: Clip.antiAlias,
                    child: const Image(image: AssetImage('assets/app_icon.png')),
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
