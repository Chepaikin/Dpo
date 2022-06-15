import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../domain/api_clients/api_client.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    ApiClient().getTable();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Settings'),
          backgroundColor: Colors.green,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('essets/images/surgu2.png'),
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.5),
              child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Row(
                  children: const <Widget>[
                    Icon(
                      FontAwesomeIcons.users,
                      shadows: [],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Gruppi',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.5),
              child: Row(
                children: const <Widget>[
                  Icon(
                    FontAwesomeIcons.user,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Prepodavateli',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.5),
              child: Row(
                children: const <Widget>[
                  Icon(FontAwesomeIcons.addressBook),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'kontakti',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
