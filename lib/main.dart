import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/internationalization/translate.dart';
import 'package:cash_book/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bindings/my_binding.dart';
import 'methods/user_route_method.dart';
import 'model/book.dart';
import 'model/entry.dart';
import 'model/user.dart';

void main() async {
  await Hive.initFlutter();
  // * opening hive boxes
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>(kUserBoxName);
  Hive.registerAdapter(EntryAdapter());
  await Hive.openBox<Entry>(kEntryBoxName);
  Hive.registerAdapter(BookAdapter());
  await Hive.openBox<Book>(kBookBoxName);
  await GetStorage.init();

  MyBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.downToUp,
      initialBinding: MyBindings(),
      // * translation
      translations: Translate(),
      locale: Locale(GetStorage().read('language') == 'fa' ? 'fa' : 'en'),
      // * checking if it is the first time the app is running
      // initialRoute: userRoute(),
      initialRoute: kBookScreenRoute,
      getPages: MyRoutes.pages,
      theme: ThemeData(
        fontFamily: 'Nunito',
      ),
    );
  }
}
