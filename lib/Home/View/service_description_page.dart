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
        title: Text('Computer repair',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                )),
      ),
      body: SingleChildScrollView(
        child: Center(
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
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                              const CircleAvatar(
                                radius: 30.0,
                                backgroundImage: AssetImage(
                                  'assets/images/profile.jpg',
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('James smith',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                          )),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    '⭐ 4.0',
                                    style: TextStyle(
                                      color: lColorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 20,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text('3529 Alexander Drive, Dallas',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                      )),
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                '3 miles away from your location',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
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
                        shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )),
                    child: Text(
                      'Show on map',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed molestie dolor. Donec at magna ut libero pulvinar vulputate sed et nisl. Nulla suscipit maximus magna a aliquam. Aliquam pharetra, ligula at consectetur facilisis, risus risus luctus urna, ac efficitur metus risus sed justo. In quis aliquam ex. Mauris magna leo, commodo sed pretium ac, rutrum eu lorem. Nulla facilisi. Aenean convallis, risus et bibendum euismod, velit neque lacinia turpis, at malesuada urna dui vitae neque.Vestibulum at consectetur arcu. Cras auctor tellus eget mi cursus, et posuere erat mattis. Ut et iaculis justo. Phasellus varius ligula non arcu accumsan interdum. Duis odio purus, mattis nec sapien sed, consectetur facilisis urna. Morbi imperdiet maximus libero, sit amet faucibus eros faucibus ultricies. Morbi id tellus quis ante maximus mollis. Proin sed porta massa. Mauris et cursus risus. Proin pharetra imperdiet luctus. Vivamus vitae diam sit amet nunc tristique gravida. In risus mi, fermentum in massa ut, iaculis laoreet nibh. Aliquam erat volutpat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce ultrices id erat vel venenatis. Nam nec consequat dui. Duis pretium, mauris viverra pulvinar rutrum, velit massa efficitur dolor, eget tristique neque urna non dolor. Nulla',
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer),
                      softWrap: true,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor:
                                  Theme.of(context).colorScheme.background,
                              isScrollControlled: true,
                              useSafeArea: true,
                              constraints: BoxConstraints(
                                minHeight:
                                    MediaQuery.of(context).size.height * 0.9,
                                maxHeight:
                                    MediaQuery.of(context).size.height * 0.9,
                              ),
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                    ),
                                    margin: const EdgeInsets.all(10),
                                    height: MediaQuery.of(context).size.height *
                                        0.8,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Refer to',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                        TextField(
                                          controller: ctrl,
                                          autocorrect: false,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.all(
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                15,
                                              ),
                                            ),
                                            filled: true,
                                            hintStyle: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
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
                                                      margin:
                                                          const EdgeInsets.all(
                                                              5),
                                                      height: 50,
                                                      width: 50,
                                                      child: const CircleAvatar(
                                                        radius: 36.0,
                                                        backgroundImage:
                                                            AssetImage(
                                                          'assets/images/profile.jpg',
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Robin Papa',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodyMedium!
                                                                  .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                        ),
                                                        Text(
                                                          'Computer repair',
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodySmall!
                                                                  .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .onSecondaryContainer,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                        ),
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    OutlinedButton(
                                                      onPressed: () {},
                                                      style: ButtonStyle(
                                                        shape:
                                                            MaterialStatePropertyAll(
                                                          RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              10,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      child: const Text(
                                                        'Refer',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          label: const Text('Refer'),
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
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
                            shape: MaterialStatePropertyAll(
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
