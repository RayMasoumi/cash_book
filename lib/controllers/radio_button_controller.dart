import 'package:cash_book/constants/enums.dart';
import 'package:get/get.dart';

class RadioButtonController extends GetxController {
  var selectedValue = 0.obs;
  var selectedPaymentMethod = PaymentMethod.other.obs;
}
