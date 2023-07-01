import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/book.dart';
import 'model/entry.dart';
import 'model/user.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox<User>('userBox');
  Hive.registerAdapter(EntryAdapter());
  Hive.openBox<Entry>('entryBox');
  Hive.registerAdapter(BookAdapter());
  Hive.openBox<Book>('bookBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
