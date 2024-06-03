import 'package:get/get.dart';
import 'package:zenzzed/profile/models/service_request_model.dart';

class ServiceRequestsController extends GetxController {
  final requests = [
    ServiceRequest(
      name: 'Robin Papa',
      rating: 4.0,
      estCost: 20.50,
      accepted: false,
    ),
    ServiceRequest(
      name: 'Robin Papa',
      rating: 4.0,
      estCost: 20.50,
      accepted: false,
    ),
    ServiceRequest(
      name: 'Robin Papa',
      rating: 4.0,
      estCost: 20.50,
      accepted: false,
    ),
  ];
  void changeAcceptance(int ind) {
    requests[ind].accepted = true;
    update();
  }
}
