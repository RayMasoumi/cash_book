import 'package:cash_book/constants/colors.dart';
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
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 300),
      initialBinding: MyBindings(),
      // * translation
      translations: Translate(),
      locale: Locale(GetStorage().read('language') == 'fa' ? 'fa' : 'en'),
      // * checking if it is the first time the app is running
      // initialRoute: userRoute(),
      // initialRoute: kIntroductionScreenRoute,
      // initialRoute: kMainScreenRoute,
      initialRoute: kBookScreenRoute,
      getPages: MyRoutes.pages,
      theme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme(),
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.resolveWith((_) => Colors.black),
          fillColor:
              MaterialStateProperty.resolveWith((_) => Colors.transparent),
          side: AlwaysActiveBorderSide(),
        ),
      ),
      darkTheme: ThemeData(
        textTheme: GoogleFonts.outfitTextTheme().copyWith(
          displayLarge: const TextStyle(color: Colors.white),
          displayMedium: const TextStyle(color: Colors.white),
          displaySmall: const TextStyle(color: Colors.white),
        ),
        checkboxTheme: CheckboxThemeData(
          checkColor: MaterialStateProperty.resolveWith((_) => Colors.white),
          fillColor: MaterialStateProperty.resolveWith((_) => Colors.red),
          side: AlwaysActiveBorderSide(),
        ),
      ),
    );
  }
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(states) => const BorderSide(color: kGreyBorderColor);
}
