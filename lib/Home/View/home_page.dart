import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:zenzzed/home/Controller/home_page_controller.dart';
import 'package:zenzzed/home/View/all_requests.dart';
import 'package:zenzzed/home/View/dark_service_card.dart';
import 'package:zenzzed/home/View/request_referral_card.dart';
import 'package:zenzzed/home/View/search_service.dart';
import 'package:zenzzed/home/View/service_card_horizontal.dart';
import 'package:zenzzed/profile/views/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int viewpage = 0;
  int currentPageIndex = 0;
  HomePageController controller = HomePageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset('assets/images/profile.jpg'),
          ),
        ),
        title: Column(
          children: [
            Text(
              'Good Morning,',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 12.0),
            ),
            Text(
              'John williams',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(
                () => const SearchService(
                  iconsShow: true,
                ),
              );
            },
            icon: Icon(
              CupertinoIcons.search,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (cxt) => const Notifications()));
            },
            icon: Badge(
              isLabelVisible: true,
              child: Icon(
                CupertinoIcons.bell,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ImageSlideshow(
                // autoPlayInterval: 3000,
                indicatorColor: Theme.of(context).colorScheme.onPrimary,
                // isLoop: true,
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(0),
                      child: Image.asset(
                        'assets/images/cleaning.jpg',
                        height: MediaQuery.of(context).size.height / 4,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                child: const Column(
                  children: [
                    RequestReferralCard(
                      name: 'My service requests',
                      number: '04',
                    ),
                    RequestReferralCard(
                      name: 'My referral earnings',
                      number: '\$129',
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6.0,
                ),
                child: Row(
                  children: [
                    Text('Top searched services',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 12.0, left: 20.0, right: 10.0),
                height: 70,
                //height: MediaQuery.of(context).size.height / 10,
                child: GetBuilder<HomePageController>(
                  init: Get.put(HomePageController()),
                  builder: (controller) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.iconAdd.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                              padding: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    10,
                                  ),
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => AllRequests(
                                        viewPage: viewpage,
                                        title: controller.iconLabels[index],
                                        type: Axis.vertical,
                                      ));
                                },
                                child: ImageIcon(
                                  size: 28,
                                  Image.asset(
                                          'assets/icons/${controller.iconAdd[index]}.png')
                                      .image,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                            const SizedBox(height: 3.0),
                            Text(
                              controller.iconLabels[index],
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      fontWeight: FontWeight.bold),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Services request near you',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.to(
                          () => AllRequests(
                            viewPage: viewpage + 1,
                            title: 'Services request near you',
                            searchTitle: 'Search for services',
                            type: Axis.vertical,
                          ),
                        );
                      },
                      child: Text(
                        'View all',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 430,
                // height: MediaQuery.of(context).size.height / 1.87,
                child: ServiceCardH(
                  type: Axis.horizontal,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Based on your recent zenzzed',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.to(() => AllRequests(
                              viewPage: viewpage + 2,
                              title: 'Based on your recent zenzzed',
                              searchTitle: 'Search based on recent searches',
                            ));
                      },
                      child: Text(
                        'View all',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 420,
                // height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const DarkServiceCard();
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  children: [
                    Text(
                      'Computer repair near you',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Get.to(() => AllRequests(
                              viewPage: viewpage + 3,
                              title: 'Computer repair near you',
                              searchTitle: 'Search on Computer repair',
                            ));
                      },
                      child: Text(
                        'View all',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 420,
                // height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const DarkServiceCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
