import 'package:get/get.dart';

import '../model/book.dart';

class BookController extends GetxController {
  var currentBook = Rx<Book?>(null);
  RxList<Book> userBooks = <Book>[].obs;
}
