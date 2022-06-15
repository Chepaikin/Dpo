import 'package:dpo_manager/domain/api_clients/api_client.dart';
import 'package:flutter/material.dart';
//import 'package:date_picker_timeline/date_picker_timeline.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  final _table = <Table>[];
  List<Table> get table => _table;
  @override
  Widget build(BuildContext context) {
    ApiClient().getTable();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Time Table'),
            backgroundColor: Colors.green,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('essets/images/surgu2.png'),
            ),
          ),
          body: ListView.builder(
            itemCount: table.length,
            itemBuilder: (context, index) {
              return const Text('lol');
            },
          )),
    );
  }
}
