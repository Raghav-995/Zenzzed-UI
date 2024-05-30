import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/Controller/all_requests_controller.dart';
import 'package:zenzzed/home/View/service_card.dart';
import 'package:zenzzed/themes/theme.dart';

class AllRequests extends StatelessWidget {
  AllRequests({super.key});
  final controller = Get.put(AllRequestsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Service requests near you',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              child: TextField(
                controller: controller.searchController,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(
                    10,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  hintText: 'Search for service...',
                  fillColor: Colors.grey[250],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const ServiceCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
