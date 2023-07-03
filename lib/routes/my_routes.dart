import 'package:cash_book/constants/strings.dart';
import 'package:cash_book/screens/home_screen.dart';
import 'package:cash_book/screens/introduction_screen.dart';
import 'package:get/get.dart';

import '../screens/sign_up_screen.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: kHomeScreenRoute, page: () => const HomeScreen()),
        GetPage(
            name: kIntroductionScreenRoute,
            page: () => const IntroductionSliderScreen()),
        GetPage(name: '/sign_up_screen', page: () => const SignUpScreen()),
      ];
}
