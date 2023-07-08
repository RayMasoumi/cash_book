import 'package:get/get.dart';

import '../model/book.dart';

class BookController extends GetxController {
  var currentBook = Rx<Book?>(null);
  List<Book> userBooks = <Book>[].obs;
}
