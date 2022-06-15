import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../domain/api_clients/api_client.dart';
//import 'package:date_picker_timeline/date_picker_timeline.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';

class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  late String _userToDo;
  List<String> tasks = [];

  void initFireBase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();

    initFireBase();
  }

  @override
  Widget build(BuildContext context) {
    ApiClient().getTable();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('Tasks'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('essets/images/surgu2.png'),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('item').snapshots(),
        builder: (
          BuildContext context,
          AsyncSnapshot<QuerySnapshot> snapchot,
        ) {
          if (!snapchot.hasData) {
            return const Text('nada');
          } else {
            return ListView.builder(
                itemCount: snapchot.data!.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  return Dismissible(
                    key: Key(snapchot.data!.docs[index].id),
                    child: Card(
                      child: ListTile(
                        title: Text(
                          snapchot.data?.docs[index].get('item'),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            FirebaseFirestore.instance
                                .collection('item')
                                .doc(snapchot.data!.docs[index].id)
                                .delete();
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    onDismissed: (direction) {
                      FirebaseFirestore.instance
                          .collection('item')
                          .doc(snapchot.data!.docs[index].id)
                          .delete();
                    },
                  );
                });
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  content: TextField(
                    onChanged: (String value) {
                      _userToDo = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        FirebaseFirestore.instance
                            .collection('item')
                            .add({'item': _userToDo});

                        Navigator.of(context).pop();
                      },
                      child: const Text('Add'),
                    ),
                  ],
                );
              });
        },
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.green,
        ),
      ),
    );
  }
}
