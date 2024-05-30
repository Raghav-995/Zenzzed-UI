import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/Controller/search_service_controller.dart';
import 'package:zenzzed/themes/theme.dart';

class SearchService extends StatelessWidget {
  SearchService({super.key});
  final controller = Get.put(SearchServiceController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.white
                : Colors.black,
        // Theme.of(context).colorScheme.,
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
        title: Text(
          'Search Service',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
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
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            controller.serviceNames[index],
                            style: TextStyle(
                              fontSize: 17,
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
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
