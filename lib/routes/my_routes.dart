import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/add_new_entry_screen.dart';
import 'package:cash_book/screens/book_screen.dart';
import 'package:cash_book/screens/home_screen.dart';
import 'package:cash_book/screens/introduction_screen.dart';
import 'package:cash_book/old/introduction_screen_old.dart';
import 'package:cash_book/old/login_screen_old.dart';
import 'package:cash_book/screens/login_screen.dart';
import 'package:cash_book/screens/main_screen.dart';
import 'package:cash_book/screens/sign_up_screen.dart';
import 'package:cash_book/screens/verification_screen.dart';
import 'package:get/get.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: kHomeScreenRoute, page: () => const HomeScreen()),
        GetPage(
            name: kIntroductionScreenRoute,
            page: () => CustomIntroductionScreen()),
        GetPage(name: kSignUpScreenRoute, page: () => const SignUpScreen()),
        GetPage(name: kBookScreenRoute, page: () => const BookScreen()),
        GetPage(name: kLoginScreenRoute, page: () => const LoginScreen()),
        GetPage(
            name: kAddNewEntryScreenRoute,
            page: () => const AddNewEntryScreen()),
        GetPage(
            name: kVerificationScreenRoute,
            page: () => const VerificationScreen()),
        GetPage(name: kMainScreenRoute, page: () => const MainScreen()),
      ];
}
