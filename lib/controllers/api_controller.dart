import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

import '../model/user.dart';

class ApiController extends GetxController {
  RxList<User> dataList = RxList<User>();

  Future<void> fetchData() async {
    final url = Uri.parse(
        'http://cashbookapi.etokco.ir/api/endpoint'); // Replace with the specific endpoint URL

    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Process the response data here
      final responseData = response.body;
      // ...
    } else {
      // Handle the error if the request fails
      print('Request failed with status code ${response.statusCode}');
    }
    dataList.refresh();
  }
}
