import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/Controller/search_service_controller.dart';

class SearchService extends StatelessWidget {
  SearchService({super.key});
  final controller = Get.put(SearchServiceController());
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchServiceController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text('Search Service',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold)),
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
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  filled: true,
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  hintText: 'Search for service...',
                  fillColor: Colors.grey[250],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.iconAdd.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          ImageIcon(
                            Image.asset(
                              'assets/icons/${controller.iconAdd[index]}.png',
                            ).image,
                            color: MediaQuery.of(context).platformBrightness ==
                                    Brightness.dark
                                ? Colors.white
                                : Colors.black,
                            size: 30,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            controller.serviceNames[index],
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
