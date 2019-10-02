// import 'package:flutter/material.dart';
// import 'package:video_game_message_board_app/data/csv/csv.dart';
// import 'dart:async' show Future;
// import 'package:flutter/services.dart' show rootBundle;

// class TableLayout extends StatefulWidget {
//   @override
//   _TableLayoutState createState() => _TableLayoutState();
// }

// class _TableLayoutState extends State<TableLayout> {
//   List<List<dynamic>> data = [];

//   loadAsset() async {
//     final myData = await rootBundle.loadString("data/csv/list.csv");
//     List<List<dynamic>> csvTable = CsvToListConverter().convert(myData);

//     data = csvTable;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.refresh),
//         onPressed: () async {
//           await loadAsset();
//           print(data);
//         }),
//       appBar: AppBar(
//         title: Text("table layout and CSV"),
//       ),
//       body: SingleChildScrollView(
//         child: Table(
//           columnWidths: {
//             0: FixedColumnWidth(100.0),
//             1: FixedColumnWidth(200.0),
//           },
//           border: TableBorder.all(width: 1.0),
//           children: data.map((item) {
//             return TableRow(
//               children: item.map((row) {
//                 return Container (
//                   color:
//                     row.toString().contains("NA") ? Colors.red : Colors.green,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       row.toString(),
//                       style: TextStyle(fontSize: 20.0),
//                     ),
//                   ),
//                 );
//               }).toList()
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }