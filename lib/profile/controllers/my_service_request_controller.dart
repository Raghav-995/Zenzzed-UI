import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class MyServiceRequestController extends GetxController {
  late TextEditingController serviceSearch;
  @override
  void onInit() {
    serviceSearch = TextEditingController();
    super.onInit();
  }
}
