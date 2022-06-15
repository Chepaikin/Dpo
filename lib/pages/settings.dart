import 'package:flutter/material.dart';
import '../domain/api_clients/api_client.dart';
import 'package:line_icons/line_icons.dart';

import '../wigets/settingsColumn.dart';

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
            SettingsColumn(
              texT: const Text(
                'Группы',
                style: TextStyle(fontSize: 15),
              ),
              icoN: const Icon(
                LineIcons.userFriends,
                size: 30,
              ),
            ),
            SettingsColumn(
              texT: const Text(
                'Преподаватели',
                style: TextStyle(fontSize: 15),
              ),
              icoN: const Icon(
                LineIcons.user,
                size: 30,
              ),
            ),
            SettingsColumn(
              texT: const Text(
                'Контакты',
                style: TextStyle(fontSize: 15),
              ),
              icoN: const Icon(
                LineIcons.phone,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// import '../domain/api_clients/api_client.dart';

// class Settings extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);

//   @override
//   State<Settings> createState() => _SettingsState();
// }

// class _SettingsState extends State<Settings> {
//   @override
//   Widget build(BuildContext context) {
//     ApiClient().getTable();
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text('Settings'),
//           backgroundColor: Colors.green,
//           leading: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Image.asset('essets/images/surgu2.png'),
//           ),
//         ),
//         body: TextButton(
//           onPressed: () {},
//           child: PhysicalModel(
//             color: Colors.cyan,
//             elevation: 20.0,
//             child: Container(
//               constraints: BoxConstraints.expand(
//                 height: Theme.of(context).textTheme.headline1!.fontSize! * 0.2 +
//                     100,
//               ),
//               margin: const EdgeInsets.all(10.0),
//               //  color: Colors.grey,

//               child: const Text(
//                 'text',
//                 style: TextStyle(fontSize: 25.0, color: Colors.black),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
