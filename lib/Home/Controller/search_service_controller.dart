import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchServiceController extends GetxController {
  @override
  void onInit() {
    searchController = TextEditingController();
    super.onInit();
  }

  late TextEditingController searchController;
  var iconAdd = [
    'chair',
    'handyman',
    'vacuum',
    'bookshelves',
    'skyline',
    'monitor',
    'moving',
    'chair',
    'outlet',
    'lightbulb',
    'plug',
    'paintroller',
  ];
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
