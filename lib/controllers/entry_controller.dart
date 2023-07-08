import 'package:get/get.dart';
import 'package:cash_book/model/entry.dart';

class EntryController extends GetxController {
  var isCashIn = true.obs;
  RxList<Entry> bookEntries = <Entry>[].obs;
  RxList<Entry> currentBookEntries = <Entry>[].obs;
}
