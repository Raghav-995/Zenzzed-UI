import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/Controller/search_service_controller.dart';
import 'package:zenzzed/Home/View/all_requests.dart';

class SearchService extends StatelessWidget {
  const SearchService({super.key, this.iconsShow});
  final bool? iconsShow;
  @override
  Widget build(BuildContext context) {
    Widget categoryTitle = Text(
      'Choose Catgory',
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Theme.of(context).colorScheme.primary),
    );
    var controller = Get.put(SearchServiceController());
    return Scaffold(
      appBar: iconsShow!
          ? AppBar(
              centerTitle: true,
              backgroundColor: Theme.of(context).colorScheme.background,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              title: Text('Search Service',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold)),
            )
          : null,
      body: Center(
        child: Column(
          children: [
            if (iconsShow == false) categoryTitle,
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
                          if (iconsShow == true)
                            ImageIcon(
                              Image.asset(
                                'assets/icons/${controller.iconAdd[index]}.png',
                              ).image,
                              size: 30,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          const SizedBox(
                            width: 30,
                          ),
                          TextButton(
                            child: Text(
                              controller.serviceNames[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (builder) => AllRequests(
                                            type: Axis.vertical,
                                            viewPage: 0,
                                            title:
                                                controller.serviceNames[index],
                                          )));
                            },
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
