import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zenzzed/themes/theme.dart';

class ServiceDescriptionPage extends StatelessWidget {
  ServiceDescriptionPage({super.key});
  final TextEditingController ctrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Colors.white
                : Theme.of(context).colorScheme.primary,
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
          'Computer repair',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Colors.white.withOpacity(0.8)
                : Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 150,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
                      ),
                      height: 200,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/ComputerRepair.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Container(
                            // margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        child: Image.asset(
                                          'assets/images/profile.jpg',
                                          height: 60,
                                          width: 60,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'James smith',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '⭐ 4.0',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: MediaQuery.of(context)
                                                  .platformBrightness ==
                                              Brightness.dark
                                          ? Colors.white.withOpacity(0.6)
                                          : null,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '3529 Alexander Drive, Dallas',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                const Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '3 miles away from your location',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/map.png',
                                height: 130,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text('Show on map'),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: const Divider(),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 0,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Service description',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed molestie dolor. Donec at magna ut libero pulvinar vulputate sed et nisl. Nulla suscipit maximus magna a aliquam. Aliquam pharetra, ligula at consectetur facilisis, risus risus luctus urna, ac efficitur metus risus sed justo. In quis aliquam ex. Mauris magna leo, commodo sed pretium ac, rutrum eu lorem. Nulla facilisi. Aenean convallis, risus et bibendum euismod, velit neque lacinia turpis, at malesuada urna dui vitae neque.Vestibulum at consectetur arcu. Cras auctor tellus eget mi cursus, et posuere erat mattis. Ut et iaculis justo. Phasellus varius ligula non arcu accumsan interdum. Duis odio purus, mattis nec sapien sed, consectetur facilisis urna. Morbi imperdiet maximus libero, sit amet faucibus eros faucibus ultricies. Morbi id tellus quis ante maximus mollis. Proin sed porta massa. Mauris et cursus risus. Proin pharetra imperdiet luctus. Vivamus vitae diam sit amet nunc tristique gravida. In risus mi, fermentum in massa ut, iaculis laoreet nibh. Aliquam erat volutpat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ultrices id erat vel venenatis. Nam nec consequat dui. Duis pretium, mauris viverra pulvinar rutrum, velit massa efficitur dolor, eget tristique neque urna non dolor. Nulla',
                            // maxLines: 10,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                            softWrap: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      useSafeArea: true,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.9,
                        maxHeight: MediaQuery.of(context).size.height * 0.9,
                      ),
                      context: context,
                      builder: (context) {
                        return Center(
                          child: Container(
                            margin: const EdgeInsets.all(10).copyWith(top: 0),
                            height: MediaQuery.of(context).size.height * 0.8,
                            child: Column(
                              children: [
                                Text(
                                  'Refer to',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    fontSize: 18,
                                  ),
                                ),
                                TextField(
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary),
                                  controller: ctrl,
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
                                    hintText: 'Computer repair',
                                    fillColor: Colors.grey[250],
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.all(5),
                                              height: 50,
                                              width: 50,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                child: Image.asset(
                                                  'assets/images/profile.jpg',
                                                  height: 50,
                                                  width: 50,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Robin Papa',
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                const Text(
                                                  'Computer repair',
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const Spacer(),
                                            OutlinedButton(
                                              onPressed: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return AlertDialog(
                                                      contentPadding:
                                                          const EdgeInsets.all(
                                                              20),
                                                      title: Center(
                                                        child: Text(
                                                          'Referral',
                                                          style: TextStyle(
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                      content: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .check_circle_sharp,
                                                            size: 50,
                                                            color: Theme.of(
                                                                    context)
                                                                .colorScheme
                                                                .primary,
                                                          ),
                                                          Text(
                                                            'Robin papa has been referred by you to James smith computer repair service',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      actions: [],
                                                    );
                                                  },
                                                );
                                              },
                                              style: ButtonStyle(
                                                shape: WidgetStateProperty.all(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      10,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              child: const Text(
                                                'Refer',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  label: const Text('Refer'),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  icon: const Icon(
                    Icons.turn_right_outlined,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  label: const Text('Chat'),
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                  icon: const Icon(
                    Icons.chat_bubble_outline_outlined,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
