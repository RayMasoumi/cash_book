import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/add_new_entry_screen.dart';
import 'package:cash_book/screens/book_screen.dart';
import 'package:cash_book/screens/home_screen.dart';
import 'package:cash_book/screens/introduction_screen.dart';
import 'package:cash_book/screens/login_screen.dart';
import 'package:get/get.dart';

import '../new_screens/sign_up_screen.dart';
import '../screens/sign_up_screen.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: kHomeScreenRoute, page: () => const HomeScreen()),
        GetPage(
            name: kIntroductionScreenRoute,
            page: () => const IntroductionSliderScreen()),
        GetPage(name: '/sign_up_screen', page: () => const SignUpScreen()),
        GetPage(name: '/book_screen', page: () => const BookScreen()),
        GetPage(name: '/login_screen', page: () => const LoginScreen()),
        GetPage(
            name: '/add_new_entry_screen',
            page: () => const AddNewEntryScreen()),
      ];
}
