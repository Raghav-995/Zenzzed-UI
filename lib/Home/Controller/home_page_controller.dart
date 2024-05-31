import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/View/search_service.dart';

class HomePageController extends GetxController {
  var iconAdd = ['handyman', 'movers', 'plumber', 'grocery', 'more'];
  var iconLabels = ['Handyman', 'Movers', 'Plumbers', 'Grocery', 'More'];

  var services = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMZF4XHMymvmX6UtgadygRz3TvOkui87dTyQ&s',
      'personimage':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaWR_7SEPN1Bx2NTi4R2f2hsQqW1tdjMBCjQ&s',
      'name': 'James Smith',
      'ratings': '⭐ 4.0',
      'worktype': 'Computer repair',
      'location': '3597 Alexander Drive, Dallas',
      'description':
          'Set the backgroundImage property of the CircleAvatar widget to a NetworkImage object please book my service!!',
      'accept': 'Yes',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaRB-0hKKdwnqTFY4ewuL5TI4kX5qWFZ7EWg&s',
      'personimage':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgXXCYcM0KikA6bes-Rt0im2amH_hLCJQZkA&s',
      'name': 'Oscar Jonhson',
      'ratings': '⭐ 4.5',
      'worktype': 'AI engineer',
      'location': '3567 New York, Hamsphere',
      'description':
          'Set the backgroundImage property of the CircleAvatar widget to a NetworkImage object please book my service!!',
      'accept': 'No',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS6tUYSj-NmAfZUUKebqOmmDMEW2xw0qv-QA&s',
      'personimage':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnoPN8K0ROp9fSFAthzNm1c77VKBe5T22jtg&s',
      'name': 'Silicon Alexander',
      'ratings': '⭐ 5.0',
      'worktype': 'Prompt engineer',
      'location': '3567 Austin Texas, Hamsphere',
      'description':
          'Set the backgroundImage property of the CircleAvatar widget to a NetworkImage object please book my service!!',
      'accept': 'No',
    }
  ];
}
