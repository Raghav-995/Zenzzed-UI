import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get.dart';
import 'package:zenzzed/Home/Controller/home_page_controller.dart';
import 'package:zenzzed/Home/View/dark_service_card.dart';
import 'package:zenzzed/Home/View/request_referral_card.dart';
import 'package:zenzzed/Home/View/service_card.dart';
import 'package:zenzzed/themes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
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
        title: const Column(
          children: [
            Text(
              'Good Morning,',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
            Text(
              'John williams',
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
            ),
            style: const ButtonStyle(
              iconColor: WidgetStatePropertyAll<Color>(
                Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Badge(
              isLabelVisible: true,
              child: Icon(
                CupertinoIcons.bell,
              ),
            ),
            style: const ButtonStyle(
              iconColor: WidgetStatePropertyAll<Color>(
                Colors.white,
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
                indicatorColor: Colors.white,
                // isLoop: true,
                children: [
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
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  right: 10,
                  bottom: 10,
                ),
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
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Top searched services',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: lColorScheme.primary,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                height: MediaQuery.of(context).size.height / 10,
                child: GetBuilder<HomePageController>(
                  init: Get.put(HomePageController()),
                  builder: (controller) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.iconAdd.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey[350],
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                                child: ImageIcon(
                                  size: 30,
                                  Image.asset(
                                          'assets/icons/${controller.iconAdd[index]}.png')
                                      .image,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                controller.iconLabels[index],
                                style: TextStyle(
                                  color: lColorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              const Divider(),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Service request near you',
                      style: TextStyle(
                        color: lColorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.9,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const ServiceCard();
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Based on your recent zenzzed',
                      style: TextStyle(
                        color: lColorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.9,
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
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      'Computer repair near you',
                      style: TextStyle(
                        color: lColorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: const Text('View all'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width * 0.9,
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: lColorScheme.primary.withOpacity(0.3),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
