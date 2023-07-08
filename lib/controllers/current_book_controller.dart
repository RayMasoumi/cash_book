import 'package:get/get.dart';

import '../model/book.dart';

class CurrentBookController extends GetxController {
  var currentBook = Rx<Book?>(null);
}
