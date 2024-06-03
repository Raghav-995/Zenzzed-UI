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
          PopupMenuButton(
              icon: const Icon(
                Icons.menu,
              ),
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: 1,
                    child: Text('All'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('In progress'),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text('Completed'),
                  ),
                ];
              })
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: TextField(
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
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return ServiceRequestsCard();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
