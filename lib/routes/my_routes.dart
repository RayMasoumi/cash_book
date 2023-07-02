import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/home_screen.dart';
import 'package:cash_book/screens/introduction_screen.dart';
import 'package:get/get.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: kHomeScreenRoute, page: () => const HomeScreen()),
        GetPage(
            name: kIntroductionScreenRoute,
            page: () => const IntroductionSliderScreen()),
      ];
}
