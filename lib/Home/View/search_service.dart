import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/Controller/search_service_controller.dart';
import 'package:zenzzed/Home/View/all_requests.dart';
import 'package:zenzzed/Home/View/category_request.dart';

class SearchService extends StatelessWidget {
  const SearchService({super.key, this.iconsShow});
  final bool? iconsShow;

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SearchServiceController());
    Widget homepage = Column(
      children: [
        const SizedBox(
          height: 12.0,
        ),
        Text('Choose Category',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.primary)),
        const SizedBox(
          height: 12.0,
        ),
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
                    vertical: 8.0,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5.0,
                      ),
                      TextButton(
                        child: Text(
                          controller.serviceNames[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              shape: const OutlineInputBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0))),
                              backgroundColor:
                                  Theme.of(context).colorScheme.background,
                              useSafeArea: true,
                              constraints: BoxConstraints(
                                minHeight:
                                    MediaQuery.of(context).size.height * 0.99,
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.99,
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (ctx) => const CategoryRequest());
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
    );

    return iconsShow == false
        ? homepage
        : Scaffold(
            appBar: AppBar(
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
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
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
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (builder) => AllRequests(
                                                  type: Axis.vertical,
                                                  viewPage: 0,
                                                  title: controller
                                                      .serviceNames[index],
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
