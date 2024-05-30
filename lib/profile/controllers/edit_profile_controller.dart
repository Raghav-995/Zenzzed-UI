import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  late TextEditingController userNameController;
  late TextEditingController emailAddController;
  late TextEditingController pNumControler;

  @override
  void onInit() {
    userNameController = TextEditingController();
    emailAddController = TextEditingController();
    pNumControler = TextEditingController();
    super.onInit();
  }
}
