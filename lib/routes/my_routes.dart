import 'package:cash_book/screens/home_screen.dart';
import 'package:cash_book/screens/introduction_slider_screen.dart';
import 'package:get/get.dart';

class MyRoutes {
  static List<GetPage> get pages => [
        GetPage(name: '/home_screen', page: () => const HomeScreen()),
        GetPage(
            name: '/introduction_slider_screen',
            page: () => const IntroductionSliderScreen()),
      ];
}
