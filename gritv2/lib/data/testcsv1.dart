import 'dart:io';
import 'dart:async';
import 'dart:convert';

main(List arguments) {
  final File file = new File("lib/data/csv/csv1.csv");

  Stream<List> inputStream = file.openRead();

  inputStream
    .transform(utf8.decoder)
    .transform(new LineSplitter())
    .listen((String line) {

      List row = line.split(',');

      String id = row[0];
      String category = row[1];

      print('$id, $category');
    },
    onDone: () {print('File is now closed.');},
    onError: (e) {print(e.toString());});
}