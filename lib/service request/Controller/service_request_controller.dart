import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ServiceRequestController extends GetxController {
  @override
  void dispose() {
    seriveController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    seriveController = TextEditingController();
    super.onInit();
  }

  late TextEditingController seriveController;

  var serviceNames = [
    'Furniture assembly',
    'Handyman',
    'Home cleaning',
    'Hanging pictures & shelves',
    'Office cleaning',
    'Computer repair',
    'Move help',
    'Office chairs assemble',
    'Outlet installation',
    'Light fixes',
    'Electrical',
    'Baseboard painting'
  ];
}
