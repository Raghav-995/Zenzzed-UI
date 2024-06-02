import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/profile/controllers/my_service_request_controller.dart';
import 'package:zenzzed/profile/views/service_requests_card.dart';

class MyServiceRequests extends StatelessWidget {
  MyServiceRequests({super.key});
  final controller = Get.put(MyServiceRequestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 20,
          ),
        ),
        title: Text(
          'My service request',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Expanded(
          child: Column(
            children: [
              TextField(
                controller: controller.serviceSearch,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0),
                  hintText: 'Search for service...',
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Colors.grey[300],
                  filled: true,
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return const ServiceRequestsCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
