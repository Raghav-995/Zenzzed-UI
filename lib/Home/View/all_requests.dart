import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/Controller/all_requests_controller.dart';
import 'package:zenzzed/Home/View/dark_service_card.dart';
import 'package:zenzzed/Home/View/service_card.dart';

class AllRequests extends StatelessWidget {
  const AllRequests({super.key, this.viewPage, this.title, this.searchTitle});
  final int? viewPage;
  final String? title;
  final String? searchTitle;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AllRequestsController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(title!,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: Column(
          children: [
            if (searchTitle != null)
              Container(
                margin: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller.searchController,
                  autocorrect: false,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(
                      10,
                    ),
                    prefixIcon: Icon(Icons.search,
                        size: 30,
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        15,
                      ),
                    ),
                    filled: true,
                    hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                    hintText: 'Search for service...',
                    fillColor: Colors.grey[250],
                  ),
                ),
              ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return viewPage != 1
                        ? viewPage != 2
                            ? const DarkServiceCard()
                            : const DarkServiceCard()
                        : const ServiceCard();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
