import 'package:cash_book/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bindings/my_binding.dart';
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
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.downToUp,
      initialBinding: MyBindings(),
      initialRoute: GetStorage().read('isFirstRun') == 'false'
          ? '/home_screen'
          : '/introduction_slider_screen',
      // initialRoute: '/introduction_slider_screen',
      getPages: MyRoutes.pages,
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
