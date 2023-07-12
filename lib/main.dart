import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/internationalization/translate.dart';
import 'package:cash_book/methods/get_hive_data.dart';
import 'package:cash_book/routes/my_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'bindings/my_binding.dart';
import 'model/book.dart';
import 'model/category_adapter.dart';
import 'model/entry.dart';
import 'model/entry_type_adapter.dart';
import 'model/payment_method_adapter.dart';
import 'model/user.dart';

void main() async {
  await Hive.initFlutter();
  await GetStorage.init();
  // * registering adapters:
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(BookAdapter());
  Hive.registerAdapter(EntryAdapter());
  Hive.registerAdapter(EntryTypeAdapter());
  Hive.registerAdapter(PaymentMethodAdapter());
  Hive.registerAdapter(CategoryAdapter());

  // * opening hive boxes:
  await Hive.openBox<User>(kUserBoxName);
  await Hive.openBox<Entry>(kEntryBoxName);
  await Hive.openBox<Book>(kBookBoxName);
  await Hive.openBox('entryTypeBox');
  await Hive.openBox('categoryBox');
  await Hive.openBox('paymentMethodBox');

  MyBindings().dependencies();
  getHiveData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system, // Define the light theme
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.downToUp,
      initialBinding: MyBindings(),
      // * translation
      translations: Translate(),
      locale: Locale(GetStorage().read('language') == 'fa' ? 'fa' : 'en'),
      // * checking if it is the first time the app is running
      // initialRoute: userRoute(),
      // initialRoute: kIntroductionScreenRoute,
      initialRoute: kSignUpScreenRoute,
      getPages: MyRoutes.pages,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(),
        // fontFamily: 'Nunito',
      ),
    );
  }
}
